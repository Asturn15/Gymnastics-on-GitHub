### How many seniors and how many juniors trained gymnastics in 2022? ###

SELECT 
Sum(number_of_junior) as "Total number of junior", 
Sum(number_of_senior) as "Total number of senior"
FROM all_clubs;

### In 2022, in Poland gymnastic trained 23 junior and 29 senior ### 