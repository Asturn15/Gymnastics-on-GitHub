# Project 4 - Interacitve dashboard

The amount of data collected by companies can be huge. If you wanted to review them all and draw conclusions from them, you probably wouldn't have enough time to do so, not to mention making the right decision. This process is greatly facilitated by reporting tools such as Tableau or Power BI. These allow you to create visualizations in an easy and accessible way, gathering all the most important information on several slides, sometimes on one. Seeing the potential of these tools, how easy it is to import data and process them in real time, I realized that I must not be able to use them.

The program version used:

[Power BI Desktop - free version](https://www.microsoft.com/pl-pl/download/details.aspx?id=58494)
 
It invites you on a journey through the results of the world's top athletes in gymnastics.

## STEP 1 - Data import

A tool such as Power BI easily handles reading files in the XLS format, so I will use here the files to which the original PDF was processed.

Import Country ISO data and link to flag - As I really wanted to add country flags to my report, instead of names encoded using the ISO standard, I used free API available on the [internet](https://flagpedia.net/download/api) to create an [XLS file](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%204%20-%20Power%20BI%20dashboard/Data%20used%20to%20this%20project) containing links to individual flags. In the registered version of Power BI, there is an extension that allows you to easily assign flags to country names, but when using the free version of the software in my project, I was unable to use it.

>In order not to open the XLS file from scratch, which will contain the names of all countries with their flags, I used the .json file available in this [repository](https://github.com/Yummygum/flagpack-core/blob/main/countryCodeList.json).

## STEP 2 - Project

With such a complex tool as Power BI, almost everything can be displayed on the screen. The key to the readability of the report, however, is to select the most important information and present it in a clear way.

In order to maintain some consistency with [Project 3](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%203%20-%20MS%20Excel%20analysis), I decided to build a dashboard in which it would be possible to conveniently view the results from the two most important gymnastics events in 2023. See how individual competitors compare to the competition on each apparatus and how the specific scores are distributed. Unlike the results analyzed from one country, here we have many players from all over the world, so I thought it would be interesting to see not only the results themselves but also plot them on the world map.

In order to be consistent with the subject of the report, I decided on a style similar to one of the manufacturers of gymnastic equipment used in the competition - [GYMNOVA.](https://www.gymnova.com/en/)

## STEP 3 - Cleaning data

1. The imported data looks very good, but for the needs of this project it required some transformations. To make calculations convenient, I used PowerQuery to create a table containing the results from the competition on each apparatus:

`AA_Result, Floor Exercise, Pommel Horse, Still Rings, Vault, Parallel bars, Horizontal Bar`

2. Added columns to the tables informing about the origin of this data:

`Category, Competition Level`

3. Drop ___NULL___ rows from every table.

## STEP 4 - Make first page - _All Around_

At the beginning, a small annotation - I will not describe the structure of each variable, calculation or column here - you can find it in the .pbix file, I want to indicate the most important elements that you will find on individual pages of the report and the assumptions that guided their creation. These pages can be divided into 4 types:

- A page with a summary of the number of competitors and medals
- Page with a summary of all-around results
- Pages with summary of results on individual instruments (6 pages)
- A page that is a label for an interactive map

>__And one more note - I will not explain in detail the meaning of individual point values here. I did it in project 3 ("Step 5 - Make this step more readable"), so if something is not clear, I encourage you to open it.__

1. `Table` - is the main part of almost every page of this report, always located in the lower left part of the report area. I found this to be the most convenient way to present detailed results for each gymnast. Next to the columns containing basic information (_Name, Flag_) and the most important ratings (_AA DScore, AA EScore, Total Score_), signs have been added to help distinguish each gymnasts:

- __Green arrow__ - we will see this arrow in the AA D Score column next to competitors whose score for the sum of difficulties of performed routines is higher than that of 75% of gymnasts.

- __Pink dot__ - This is a special distinction for style, for those who did not lose more than 10  points in the entire all-around.

- __Star__ - this is a badge that can be found next to the final grade, which is better than 75% of the other grades.

- __Grey background__ - gray background - this is the color that distinguishes the competitors' results achieved in the all-around final.

2. `Distibution chart` - Examining the distribution of results is extremely important because it allows us to determine how a specific grade achieved by a player looks compared to the results of the group. In another case, such a chart will be extremely helpful - looking at anomalies - particularly high and especially low results. To make everything transparent and the navigation intuitive, I decided to build 3 separate distribution charts which the user can switch between using buttons (these use the tab function). Each chart is dedicated to a different type of scoring:

- __AA DScore__ - division every 0.3 points
- __AA EScore__ - division every 0.5 points
- __Total Score__ - division by 1.0 points

  This chart is always located in the lower right part of the report, and on its right side you will find buttons that allow you to switch between the scoring types.

3. `Apparatus Chart` - In all-around competitions, what influences the final result of competitors are the ratings on individual apparatus, so they cannot be omitted on this page of the report.

- __Total Score__ is presented in the form of a donut chart, the parts of which are the ratings on individual apparatus with their percentage share. In the central part of the chart you will find a card that indicates the sum of the missing points for the best score. If no competitor has been selected from the table, the card will show the best _Total Score_
- __Difficult Score__ presented in the form of a stacked bar chart showing the grades obtained by the gymnast on each apparatus.
- __Execution Score__ similarly to the above, it is a cumulative bar chart containing individual ratings, but also the number of points the gymnast lost during the entire all-around.

4. Filter - These are buttons that allow you to quickly switch between the results you are interested in according to the basic categories according to which the data is divided:

- __Category__
- __Competition level__

5. `Card` - At the top of each page of the report, I have placed cards that clearly present how a specific grade compares to the rest and the average.

- __Ranking__ - This is a classification of grades divided into categories in which the gymnasts competed. If no competitor has been selected from the table, the card will show the number of all starters according to the specified filters.

- __From AVG _X_ Score__ - These are cards where you will find information on how many points above or below the average point value the gymnasts achieved for each component of the final score. If no competitor has been selected from the table, the card will show the average value.

- __Deduction__ - The last two cards are the number of neutral deductions and their sum

## Step 5 - Apparatus page

This one does not differ significantly from the all-around results card, so I will focus on pointing out and justifying the differences.

## Step 6 - Gymnasts Data

## Step 7 - Label for Gymnasts Data