### What was the highest D score in pommel horse exercise in 2022? ###


SELECT GREATEST(MAX(zabrze_PH_Dscore), MAX(cracow_PH_Dscore), MAX(gdansk_PH_Dscore), MAX(bydgoszcz_PH_Dscore)) as Best_PH_Dscore
FROM pommel_horse_2022;

### ANSWER: The highest D score in 2022 on pommel horse was 5.2 point ###
### NOTE: We could use just GREATEST function but in apparatus table we have, a lot NULL vaules and this not show all records ###
