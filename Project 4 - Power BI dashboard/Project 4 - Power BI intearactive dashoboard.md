# Project 4 - Interacitve dashboard

The amount of data collected by companies can be huge. If you wanted to review them all and draw conclusions from them, you probably wouldn't have enough time to do so, not to mention making the right decision. This process is greatly facilitated by reporting tools such as Tableau or Power BI. These allow you to create visualizations in an easy and accessible way, gathering all the most important information on several slides, sometimes on one. Seeing the potential of these tools, how easy it is to import data and process them in real time, I realized that I must not be able to use them.

The program version used:

[Power BI Desktop - free version](https://www.microsoft.com/pl-pl/download/details.aspx?id=58494)
 
It invites you on a journey through the results of the world's top athletes in gymnastics.

## STEP 1 - Data import

A tool such as Power BI easily handles reading files in the XLS format, so I will use here the files to which the original PDF was processed.

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

4. Completing missing data 

>At this stage, I noticed that some results were missing part of the rating - e.g. the difficulty rating. Possibly a result of the macro used to clean the data in project one. These were individual values, so it was easiest to complete them manually.

5. Import Country ISO data and link to flag - As I really wanted to add country flags to my report, instead of names encoded using the ISO standard, I used free API available on the [internet](https://flagpedia.net/download/api) to create an [XLS file](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%204%20-%20Power%20BI%20dashboard/Data%20used%20to%20this%20project) containing links to individual flags. In the registered version of Power BI, there is an extension that allows you to easily assign flags to country names, but when using the free version of the software in my project, I was unable to use it.

>In order not to open the XLS file from scratch, which will contain the names of all countries with their flags, I used the .json file available in this [repository](https://github.com/Yummygum/flagpack-core/blob/main/countryCodeList.json).

## STEP 4 - Make first page - _All Around_

## Step 5 - Apparatus page

## Step 6 - Gymnasts Data