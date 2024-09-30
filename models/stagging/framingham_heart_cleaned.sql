-- Mettre à jour CURSMOKE à 0 lorsque CIGPDAY est à 0
-- UPDATE
-- `data-analysis-bootcamp-429514.Cardiovascular_recommendations.framingham_heart_study_enriched_period_2`
-- SET CURSMOKE = 0
-- WHERE CIGPDAY = 0
-- AND CURSMOKE = 1;
select cigpday, case when cigpday = 0 then 0 else cursmoke end as cursmoke
from {{ source('framingham_heart', 'framingham_heart_study') }}