WITH recursive replacement_value_inflation_per_building (year, asset_name, replacement_value_inflation )
AS (
SELECT
	2023 as year,
	a.asset_name as asset_name,
	replacement_value::numeric as replacement_value_inflation
FROM assets a
UNION ALL
SELECT year + 1, asset_name, replacement_value_inflation * (1 + <Parameters.inflationRate>::numeric/100)
FROM replacement_value_inflation_per_building
WHERE year < 2033
), replacement_value_next_year AS (
SELECT
	year,
	asset_name,
	replacement_value_inflation,
	replacement_value_inflation * (1 + <Parameters.inflationRate>::numeric/100) AS replacement_value_next
FROM replacement_value_inflation_per_building
)
SELECT
	year,
	asset_name,
	replacement_value_inflation,
	replacement_value_next,
	(replacement_value_next - replacement_value_inflation) loss_next_year
FROM
	replacement_value_next_year