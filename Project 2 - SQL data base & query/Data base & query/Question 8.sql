### Which gymnasts scored better than the average in exercises on the parallel bars during the competition in Gdańsk? ###

SELECT Name, PB_Total_score
FROM gdansk_2022
WHERE PB_total_score>(SELECT AVG(NULLIF(PB_total_score,0)) FROM gdansk_2022)
ORDER BY PB_total_score DESC;

### ANSWER: This answer have more record, so just use query :) ###