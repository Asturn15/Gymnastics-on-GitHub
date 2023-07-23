### Which competitor had the highest average score from all starts in 2022 in still rings exercises? ###
### NOTE: For the purposes of this task, we need to assume that we are considering competitors who have competed at least twice. ###

SELECT 
      s.Name, s.License_number, 
	  CAST(((IFNULL(zabrze_SR_Total_Score,0) + IFNULL(gdansk_SR_Total_Score,0) + IFNULL(cracow_SR_Total_Score,0) + IFNULL(bydgoszcz_SR_Total_Score,0)))/t.comp as DECIMAL(10,3)) as AVG_Score
FROM still_rings_2022 s, 
     (SELECT License_number, COUNT(zabrze_SR_Dscore)+count(cracow_SR_Dscore)+count(gdansk_SR_Dscore)+COUNT(bydgoszcz_SR_Dscore) as comp FROM still_rings_2022 GROUP BY License_number) t
WHERE s.License_number=t.License_number AND t.comp>=2
ORDER BY AVG_Score DESC
LIMIT 1;

### ANSWER: The gighest avarange score on still rings in 2022 had IAREMCHUK Vladyslav with Z/02/00023 license number ###