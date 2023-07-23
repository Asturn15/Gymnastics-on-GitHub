### What was the highest D score in the all-around competition in Gdańsk? (All-around D score is sum of D score from all appratus) ###

SELECT Name, (FX_Dscore+PH_Dscore+SR_Dscore+VT_Dscore+PB_Dscore+HB_Dscore) as AA_Dscore
FROM gdansk_2022
ORDER BY AA_Dscore DESC
Limit 1;
 
 ### The highest D score from all-around was 30.1 point. ###