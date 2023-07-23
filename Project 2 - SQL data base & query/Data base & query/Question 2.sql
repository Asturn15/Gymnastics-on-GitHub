### How many gymnasts took part in each competition organized by the Polish Gymnastics Association in 2022? ###

SELECT Count(Name) as "100% attendances gymnasts"
FROM all_gymnasts
WHERE number_of_competition=4;

### ANSWER: Sixteen gymnasts took part in each competition organized by the Polish Gymnastics Association in 2022 ###