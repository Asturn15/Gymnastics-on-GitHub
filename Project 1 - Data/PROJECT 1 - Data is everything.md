# PROJECT 1 - Data

People who work with data say - "If you put garbage in, you get garbage out". While the process of data extraction and cleaning is not the most exciting part of working with data, it is probably the most important. If we properly apply ourselves to the work at this stage and are meticulous in it, it can save us a lot of time in the future. Below you will find a description of the entire process, as well as the tools and sources I used to extract the necessary data.

## STEP 1 - Official results of the most important gymnastics competitions in 2022 in Poland and in the world

As the rules for gymnasts younger than 16 differ from country to country, it is impossible to compare them. For this reason, I will rely on the data for the junior (gymnasts who are 16 years old) and senior (over 18 years old) categories for which rules are common around the world. In addition, competitions at the junior world championship level do not take place every year, so there is no data from 2022, and those that you will find in PROJECT 4 come from the following year.

You can find these files in the [Raw data - PDF & PNG](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%201%20-%20Data/Raw%20data%20-%20PDF%20%26%20PNG) folder:

* [Data from Poland](https://pzg.pl/gimnastyka-sportowa-mezczyzn/wyniki-zawodow/)

* [Data from 2nd FIG Artistic Gymnastics Junior World Championships](https://live.gymnastics.sport/schedule.php?idevent=17242)

* [Data from 51st FIG Artistic Gymnastics World Championships
Liverpool (GBR) 2022](https://gymnasticsresults.com/results/2022/worlds/index.html)

## STEP 2 -  Look at the downloaded files

They are all PDFs. This is a great extension for presenting work results, but a poor one for working with data. I used Microsoft Excel for extracion table from file. Due to the fact that the amount of data is not overwhelming, and the results are in the form of tables, this program is perfect for extracting data directly from them and their simple transformation.

>___At this stage, I encountered my first difficulty___ The tables from the _KOMUNIKAT-DMP-GSM-BYDGOSZCZ-2022_ file turned out to be completely unreadable for any of the commonly available free tools for extracting tables from a PDF file. In order not to rewrite them manually, I decided to enlarge the PDF document as much as possible, save the image as PNG and using [extracttable.com](https://extracttable.com) convert it to an XLS file.

## STEP 3 - Cleaning and transforming the extracted tables in a readable way for every recipient

This process included:

1. Giving English names to headers (results from Poland).

2. Division of cells containing a lot of data into individual columns.

3. Adding a column specifying the category in which the players competed.

4. Determination of the `Escore` column - in the results from international competitions it is in the protocols, in the results from Poland it should have been calculated on the basis of the formula __Escore__ = __Total_Score__ - __D_Score__.

5. Assigning the appropriate format for displaying numbers.

You can find more about this in the [Project 3](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%203%20-%20MS%20Excel%20analysis), where I explain the grades gained by gymnasts in detail. At this stage, just a simple explanation:

`D Score` - the score obtained by the competitor for how difficult the exercise was (more = better)

`E Score` - the score that the competitor receives for how correctly he performed his exercise (more = better)

`Pentalty` - Negative points awarded for prohibited actions such as using non-permitted mattresses or exceeding exercise time

`Total_Score = (D_Score + E_Score) - Pentalty`

>___Here we run into the first serious limitation of this project.___ When we see the protocols from international competitions, it turns out that __Total_score__ is calculated based on the formula:
__Total_Score__ = (__D_Score__ + __E_Score__) - __Pentalty__. In the all-round results used for the analysis of competitions at the national level [Project 3](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%203%20-%20MS%20Excel%20analysis), we will not find the __Penalty__ column. For this reason, I was forced to simplify this calculation. At the same time, this procedure will not significantly affect the results of the analyses, but it should be noted.

Due to the fact that not every competition in Poland had finals for each apparatus, for the purposes of the future analysis, I decided to use this data only from one of the most important competitions in 2022 - Polish Championships in Cracow. In order not to multiply the files indefinitely, these data have been grouped in one table, with the _Appratus_ column, which informs about the appratus on which a given competitor participated in the final. The results from the finals on the vault, due to formatting in a separate file.

## STEP 4 - The last step was to save the results of the work

The sheets were saved by me in two formats:

* `XLS` in folder [Clean XLS](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%201%20-%20Data/Clean%20XLS)
* `CSV` in folder [Clean CSV](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%201%20-%20Data/Clean%20CSV)

---

`+++ __PROS__ +++`

* Simplicity and accessibility of the tools used
* Ease of use in data cleaning and transformation
* Graphic user interface
* Ability to manually manipulate data

`--- __CONS__ ---`

* This method is difficult to scale for larger amounts of data
* Due to the structure of PDF files, each of them is read differently, which makes it difficult to find repeatability in the steps performed and build macros
* Requires manual data wipe

`??? __SOLUTIONS__ ???`

* Contact with the organizer - they may have files in a different extension than PDF, which are not available on the web
* Webscraping seems like a very good solution, but... competition results available on the internet are incomplete. Contains only [Total score]
* When creating project 3, I came up with the idea of building small macros and assigning them to keyboard shortcuts. This could save some time in data extraction!

### As I mentioned at the beginning - I couldn't find files in a format other than PDF. But now they are! In the future, I would like to expand the database of CSV files from other professions for more extensive analysis. In the meantime, feel free to use these, and see my other project =>
