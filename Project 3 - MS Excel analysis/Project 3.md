# Project 3 - Analysis in Microsoft Excel

I will venture to say that Excel is the most popular tool for data analysis. From the simplest, such as home budgets, to complex corporate reports. There are many reasons for this state of affairs. In addition to the dominant popularity of Windows on the desktop, features such as an accessible graphical interface or a multitude of functions that it offers should be mentioned. Such great popularity of this tool means that every person who wants to deal with data analysis should be familiar not only with its capabilities, but also be able to use it.

That's why this project was created! Using the data exported from the database, I decided to take a closer look at the results obtained by gymnasts in Poland.

* Data from [Project 2](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%202%20-%20SQL%20data%20base%20%26%20query/Exported%20tables%20-%20CSV)
* Microsoft Excel from Microsoft 365 subscription

## STEP 1 - Data import

As we have ready files with data in CSV format, just add them to our project. Each result file was added as a new sheet, and the loaded results were formatted as tables.

## STEP 2 - Cleaning data

At this stage, our data looks really good, so the cleaning process was limited to setting the appropriate formatting for specific scores, giving the table the right look and hiding the ratings = _0_, thanks to conditional formatting.

## STEP 3 - Adding necessary information

If we want our analysis to contain all the important information, we need to add a few columns. Using what Excel allows us to do, I added columns using appropriate formulas:

1. ___AA_Dscore, AA_Escore, Total_Score___ - for each competition - in the sheet containing all-around results (_AA_2022_). When creating this table in the second project, I mistakenly missed it, so I quickly fix it!

2. In the sheets containing the results from individual competitions, information about whether the competitor took part in the all-around competition (___All Around___).

3. ___AA_Dscore, AA_Escore___ - for each competition - the sum of D and E score from the entire all-around for the competitors who took part in it.

4. Drop ___NULL___ rows from every table.

5. ___AVG_D_Score_AVG_Escore_AVG_Total_Score___ - for each sheets with apparatus results.

>At this stage, I had to make a data selection. If we want to calculate the average for each competitor, we must take into account all his scores. If one competitor took part once and scored a very good start, it will be difficult to compare him with the one who took part in all competitions throughout the year. __For this reason, I selected only those who competed at least three times on a given device for the annual comparison__. For competitors who took part in more competitions, the best three results were selected.

6. __Year_AA_Dscore, Year_AA_Escore, Year_AA_Total_Score__ - in AA_2022 sheet as above, I calculate the Year score.