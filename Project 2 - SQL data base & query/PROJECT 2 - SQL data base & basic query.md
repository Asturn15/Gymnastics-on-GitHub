# Project 2 - SQL Database

There are many websites on the web where we can find ready-made datasets, examples of some of them are provided in the links below:

[Kaggle](https://www.kaggle.com/datasets)

[Goverment data](https://data.gov/)

[Google Dataset Search](https://datasetsearch.research.google.com/)

Unfortunately, when it comes to men's artistic gymnastics, there are very few of them, in addition, these data are often from several years ago, which makes it very difficult to analyze the results. Due to the fact that the regulations according to which points are awarded change every four years, we cannot compare data from a few years ago to those from the last Olympic cycle (2021 - 2024).

For this reason, I decided to build a database in SQL, which will contain the results of all competitions that took place in Poland in 2022. I would like such a database to be able to view not only the results of the competitions themselves, but also to find individual gymnasts and where they competed. Find results broken down by apparatus and basic information about gymnastics clubs. For this task I used the following tools:

* Data from [PROJECT 1](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%201%20-%20Data/Clean%20CSV/Result%20from%20Poland)
* MySQL Server 8.0.33
* MySQL Workbench 8.0
* Visual Studio Code

Below is a step-by-step description of how we managed to create a complete database with the results:

## STEP 1 - Creating a data base - _mag_result_2022_

## STEP 2 - Creating tables and loading data

For the purposes of operations in sql, I decided to simplify the names of individual data sets to the name of the city where the competition took place and the year.

* _bydgoszcz_2022_
* _zabrze_2022_
* _krakow_2022_
* _gdansk_2022_
* _pc_apparatus_final_2022_
* _pc_vault_final_2022_

## STEP 3 Clearing data

1. Indication of proper formatting for columns:

* ___Dsore___ (Decimal 10.1)
* ___Escore___ (Decimal 10.3)
* ___Total_score___ (Decimal 10.3)

2. Creation of the ___Name___ column containing combined data from the ___Surname___ and ___Name___ columns - similar to the protocols from international competitions.

3. Remove empty spaces in the ___Club___ column.

## STEP 4 - Creating a table in which we will find all the gymnasts who took part in the competition in 2022 - _gymnasts_

1. Create a primary key for the ___License_number___ column and foreign keys for the corresponding columns in tables containing competition results.

2. Adding columns in which we will find information about the number of starts in the year and the names of the cities in which the competitor competed.

3. Adding columns in which we will find information about the number of finals in Polish Championship and total number of medals in 2022.

## STEP 5 - Creation of a table in which we will find all the clubs that competed in 2022 - _clubs_

1. Create primary key for ___Club___ column and foreign keys for corresponding columns in other tables.

1. Adding a column with data on the number of gymnasts in each category, the name of the city from which the club comes from, and its address.

## STEP 6 - Creation of tables containing the results of the competition on every apparatus for all competitors

Using the capabilities of SQL and the previously created primary and forgein key, I easily created the following tables, which contain all players from the _gymnasts_ table and their corresponding results on each apparatus:

* _Floor_Exercise_2022_
* _Pommel_Horse_2022_
* _Still_rings_2022_
* _Vault_2022_
* _Pararell_bars_2022_
* _Horizontal_bar_2022_
* _All_around_2022_

Due to the fact that the data from the finals have a different format, they were not used in these tables. We will use them in [Project 4] and [Project 5].

## STEP 7 -  Export of tables containing results from every apparatus for future projects ([Exported tables - CSV](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%202%20-%20SQL%20data%20base%20%26%20query/Exported%20tables%20-%20CSV))

I decided to use the created database to answer on 10 questions about the results, and gymnasts in 2022 ([Database & query](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%202%20-%20SQL%20data%20base%20%26%20query/Data%20base%20%26%20query)).

1. _How old was the oldest gymnast competing?_
2. _How many gymnasts took part in each competition organized by the Polish Gymnastics Association in 2022?_

3. _How many seniors and how many juniors trained gymnastics in 2022?_

4. _Gymnasts whose club won the most medals and how many?_

5. _What was the highest D score in the all-around competition in Gdańsk?__

6. _What was the highest D score in pommel horse exercise in 2022?__

7. _What was the average score obtained on each apparatus during the competition in Krakow?_

8. _Which gymnasts scored better than the average in exercises on the parallel bars during the competition in Gdańsk?_

9. _Which competitor had the highest average score from all starts in 2022 in still rings exercises?_

10. _Which athletes scored the highest in all all-around events in 2022? (Sum of Total_points, Top 5)_

At this stage, it turned out that there is an error in the data from the ___DMP-Bydgoszcz-2022-AllAround___ file. Two gymnasts (_License_number: 30185, 33333_) had wrong grades in their scores. Swapped D score with E score. We can come to this conclusion when we look at the amount of the rating. Grade D above 7.0 pts. these are the highest ratings recorded in the world, and extremely rare in addition. Grade E in the range of 3.000 - 4.000 points. is very low and characterized by exercises with several falls. These conclusions could be reached thanks to question 6. ___These errors were not corrected in the original files, but only in the SQL database and extracted tables.___

The answers to the above questions do not show the full potential of SQL. When asking them, I focused on the perspective of the recipient who knows nothing about the results of gymnastics competitions and would like to review the results.

+++ __PROS__ +++

* Easy to scale
* Easy manipulation of large amounts of data
* Fast

--- __CONS__ ---

* Poor Interface - it makes look everything very complex even when it's not.
* Each information we are interested in requires a separate query.
* If we want to see the data in a visual form, we do not have this option.

??? __SOLUTIONS__ ??

In this case, the solution is simple. SQL is great for storing results from competitions and getting simple queries, but for data analysis we just need to use a different tool.

---

I invite you to [Project 3](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%203%20-%20MS%20Excel%20analysis), where you will find a complete analysis with an explanation of gymnastics issues and visualization of all these results. There it will be easier for us to reflect on the above numbers and answer more questions =>
