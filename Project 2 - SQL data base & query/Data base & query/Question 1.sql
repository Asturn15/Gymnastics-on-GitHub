### How old was the oldest gymnast competing? ###

SELECT Name, (2022 - Birth_year) as Age
FROM all_gymnasts
ORDER BY Birth_year ASC;

### ANSWER: Oldest gymnasts in 2022 had 26 years. ###