### Gymnasts whose club won the most medals and how many? ###

SELECT Club, SUM(Number_of_medals_in_2022) as Club_medals
FROM all_gymnasts
GROUP BY Club
ORDER BY Club_medals DESC;

### ANSWER: KS AZS AWF Kraków was club with the highest number of medals in 2022 - sixteen ###