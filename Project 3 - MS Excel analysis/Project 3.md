# Project 3 - Analysis in Microsoft Excel

I will venture to say that Excel is the most popular tool for data analysis. From the simplest, such as home budgets, to complex corporate reports. There are many reasons for this state of affairs. In addition to the dominant popularity of Windows on the desktop, features such as an accessible graphical interface or a multitude of functions that it offers should be mentioned. Such great popularity of this tool means that every person who wants to deal with data analysis should be familiar not only with its capabilities, but also be able to use it.

That's why this project was created! Using the data exported from the database, I decided to take a closer look at the results obtained by gymnasts in Poland.

* Data from [Project 2](https://github.com/Asturn15/Gymnastics-on-GitHub/tree/main/Project%202%20-%20SQL%20data%20base%20%26%20query/Exported%20tables%20-%20CSV)
* Microsoft Excel from Microsoft 365 subscription

## STEP 1 - Data import

As we have ready files with data in CSV format, just add them to our project. Each result file was added as a new sheet, and the loaded results were formatted as tables.

## STEP 2 - Cleaning data

At this stage, our data looks really good, so the cleaning process was limited to few simple operation:

1. Setting the appropriate formatting for specific scores.

2. Giving the table the transparent look.

3. Hiding the ratings = _0_, thanks to conditional formatting.

4. Drop ___NULL___ rows from every table.

## STEP 3 - Adding necessary information

If we want our analysis to contain all the important information, we need to add a few columns. Using what Excel allows us to do, I added columns using appropriate formulas:

1. `AA_Dscore, AA_Escore, Total_Score` - for each competition - in the sheet containing all-around results (_AA_2022_). When creating this table in the second project, I mistakenly missed it, so I quickly fix it!

2. In the sheets containing the results from individual competitions, information about whether the competitor took part in the all-around competition - `All Around`.

3. `AA_Dscore, AA_Escore` - for each competition - the sum of D and E score from the entire all-around for the competitors who took part in it.

4. `AVG_D_Score, AVG_Escore, AVG_Total_Score` - for each sheets with apparatus results.

>At this stage, I had to make a data selection. If we want to calculate the average for each competitor, we must take into account all his scores. If one competitor took part once and scored a very good start, it will be difficult to compare him with the one who took part in all competitions throughout the year. __For this reason, I selected only those who competed at least three times on a given apparatus for the annual comparison__. For competitors who took part in more competitions, the best three results were selected.

5. `Year_AA_Dscore, Year_AA_Escore, Year_AA_Total_Score` - in AA_2022 sheet as above, I calculate the Year score.

6. Hide column with apparatus result in AA_2022 sheet.

## STEP 4 - Calculate avarange score & standard deviation, finding top score and best gymnasts

The avarange and standard deviation are the basic measures used to describe data. In each of the sheets, they were calculated for the results that we find in them.

* In sheets containing data from competition, you can find this value for every appataus and broken down into junior and senior.
* In sheets with apparatus result, these numbers have been calculated for each score, also for junior and senior separate.

The results were formatted as tables and placed below the original data.

## STEP 5 - Make this result more readable

Now that we have the basic values describing our results, we can use them to make them more readable. But before we go any further, I'll take a little space here to explain how gymnasts get their scores. A few words about this appeared in earlier projects, but for the understanding of this and subsequent analyses, it needs to be expanded.

__`Difficult Score (D score)`__ - is a rating given to a gymnast for how difficult an exercise he performed. It consists of four special requirements for meeting which you can get _0.5_ points. These requirements are different for each instrument (Vault is an exception - there are no requirements here). In addition to the requirements, points are awarded for the 8 most difficult elements - for juniors, 10 for seniors. How do we know how many points each item is worth? These can be found in special tables in the [Code of Points](https://www.gymnastics.sport/publicdir/rules/files/en_%202022-2024%20MAG%20CoP.pdf). In short - the elements are classified into difficulty groups, from _A_ to _J_. Element _A_ of the group is worth _0.1_ points, element _B_ of the group is worth _0.2_ points, etc. At the end of the exercise, the judges evaluating the difficulty by listing all the elements and choose the most difficult ones - with the greatest benefit for the competitor. Some examples:

* Backflip on Floor Exercise is _A_ group - worth _0.1_ points
* Triple backflip on Floor Exercise is _H_ groups - worth _0.8_ points
* Press to handstand on Parallel Bars is _A_ group - worth _0.1_ points
* Double back flip dismnout from Parallel Bars is _C_ group - worth _0.3_ points

One of the requirements on each of the devices is the landing of the appropriate difficulty - Group _C_ for juniors, and Group _D_ for seniors. If the players jump down a group lower, they will receive _0.3_ points for this requirement. All groups below do not meet this requirement. In addition, each device has its own special rules thanks to which the player can get a bonus, however, not wanting to complicate the topic, I will stop here. That's enough for us. I am also posting sample recordings on which you can see the valuation of the entire exercise => [Example 1](https://www.youtube.com/watch?v=fQYf1AZqjsg&ab_channel=GymBestEdit), [Example 2](https://www.youtube.com/watch?v=EiAm__ymb0s&ab_channel=GymBestEdit), [Example 3](https://www.youtube.com/watch?v=qCGHvQc3mbA&ab_channel=GymBestEdit).

> As I mentioned earlier, the vault is an exception. Here, the coach reports before the start what jump his competitor will perform, and his score is read from the Code of Points. If he makes an easier jump, his score will be reduced accordingly.

__`Execution Score (E score)`__ - is a mark for how correctly the competitor performed his exercise. This grade is set differently from that for difficulty. Each gymnast whose exercise consists of the minimum number of elements - _7_ for juniors, _9_ for seniors, receives __10_ points at the beginning. Points for errors made during the exercise are subtracted from this value.

* _Small_ -  cost _0.1_ point
* _Medium_ - cost _0.3_ point
* _Large_ - cost _0.5_ point
* _Fall_ - cost _1.0_ point

What do we call errors? What is a big mistake and what is only a small one? In short - it's everything that deviates from the perfect performance. It will be easier to understand with specific examples:

* Small hop (approximately - less than foot length) after landing - _small error_ - _0.1_ point
* Hitting the apparatus during exercise - _medium error_ - _0.3_ point
* Failure to withstand the strength element- _large error_ - _0.5_ point

Why does the format of this number have 3 decimal places? As you can easily see, whether the jump is "big" or "medium" or "small" is a relative thing, that's why there are several E judges during the competition, and the score is their arithmetic mean. As always - it's better to see the examples, so as before, watch the videos => [Example 1](https://www.youtube.com/watch?v=EXCoDxnAbT8&ab_channel=calebfever), [Example 2](https://www.youtube.com/watch?v=PsotXyhe1Cg&ab_channel=GymBestEdit), [Example 3](https://www.youtube.com/watch?v=u2_oOeYwgSo&ab_channel=GymBestEdit).

__`Penalty`__ - Happiness is easier here. These are points deducted for breaking the rules included in the regulations, like:

* Too long exercise
* Use of mattresses where prohibited
* Exercise too short (too few elements)

I intentionally don't give values here because there are a lot of conditions, and it's not that common again.

__`Total Score`__ = is the sum of all of the above => (__D Score + Escore__) - __Penalty__

> Looking at what directly affects the final grade, we notice that one of them can be "easily" increased, making our exercise more difficult (D score). The second of these ratings (E score) is a bit more problematic in this respect. Looking at what directly affects the final grade, we notice that one of them can be "easily" increased, making our exercise more difficult (D score). The second of these ratings (E score) is a bit more problematic in this respect. Everyone who went for a short jog at least once experienced fatigue, and with it had to slow down. The same applies to gymnastics, so even the simplest exercises are never flawless.

Why do we need to know this? Thanks to this knowledge, it will be easier for us to read the results of the competition. We'll have some idea of what's different between exercises that are, for example, 2.0 difficult score, or 1,000 execution score.

---

1. To make our data more readable, we will use our new knowledge and mark in our spreadsheet any D score that do not meet all the requirements on a particular appartus. All these scores are marked in `bright red`.  better than one standard deviation from avarange with a `orange`

* For junior - _6_ elements * _A_ group (_0.1_) + _B_ group dimounts (_0.2_) + _1.8_ (Minimal requirements) = _2,6_ D Score
* For senior - _8_ elements * _A_ group (_0.1_) + _C_ group dimounts (_0.3_) + _1.8_ (Minimal requirements) = _2,9_ D score

2. Highest Total Score are marked in `gold`, better than one standard deviation from avarange with a `green`

3. In the case of Execution score, I used a slightly different method. As this one is much more variable, the formatting was based on the sum from the entire competition. In my opinion, this reflects how well the gymnast practiced much better than the grade from a single exercise. Those who exercised better than average were highlighted in `pink`.

>__All the above designations are based on conditional formatting calculated on the basis of formulas, thanks to which tables with competition results are fully dynamic!__
>
>The values for these formulas are listed in the table next to the results. The first attempt was based on entering full calculation formulas for conditional formatting, but such a large number of conditions resulted in a lack of smoothness in the operation of the spreadsheet, which, combined with the troublesome implementation of entering formulas for conditional formatting, turned out to be extremely burdensome.

## STEP 6 - Distribution of results in apparatus sheet

When we look at the ratings, their averages and standard deviation, we can sometimes assume that they do not fully reflect the state of affairs. What will help us understand why is how the scores break down. We'll need a chart for that.

To get data for it, I could write formulas that will count the number of results from specific ranges, but ... excel has better tools for this - Pivot Table! To make it easier to use, I created tables in each of the apparatus sheets in a shifted form, where each assessment is not in a separate column, but in a row. For this I used Power Query. What was very helpful at this stage were the macros. Thanks to this tool, we managed to save some time on very repetitive activities.

1. I got rid of the detailed names for the points. I divided them into three categories - `Dscore, Escore, Total Score`.

2. The above steps allowed to summarize the data from the competitions in the form of a pivot table. This one, along with its source, is to the right of the original data.

3. Adding pivot charts together with slicers - thanks to them viewing charts is much more comfortable.

## STEP 7 - Add charts to competition sheet

1. As above, for each of the sheets containing data from individual occupations, I created tables in the presented form.

2. I added pivot tables in which I summarized the results from each competition in a convenient form - together with a graph.

3. As there is a lot of data, for the comfort of viewing them, I have included a slicer.

## STEP 8 - Build interactive dashoboard

We have a lot of data in the whole spreadsheet. Those coming from competitions as well as from the analysis of individual instruments, but browsing them is not very intuitive. A lot of sheets, various tables, etc. It's rather something for data lovers who like to look at numbers. If I wanted to go to a meeting with the board of a sports association and show a summary of 2022, I need one sheet in which we will find all the most important information - preferably with a graphic interpretation because it speaks to us much more. An interactive dasboard is perfect for this.

1. To fit all sheets in one, we will use transformed tables to create one `Dasboard_Data`. To transform all these tables I used macros for the sake of a large number of repetitive activities.

>At this stage, I gave up building fully dynamic tables (more in the summary). Due to the number of calculated rows, this had a very negative impact on the operation of the entire sheet.

2. In the `Dashboard_Data` sheet, I have placed 7 properly filtered pivot tables. Thanks to this, they will be the source of data necessary in our dashboard.

3. The last stage of this project is to build a clear dashboard with all the most important information. Among them, I decided to specify the averages of individual grades, and indicate the highest ones together with the name of the gymnast who won it. To be able to compare the best with the other gymnasts, I added a pivot chart, together with slicers that will easily allow you to select the information that interests us.Na samym końcu zadbałem o to by wszystkie te informacje były czytelne dodając odpowiednią kolorystykę dla całego dashboardu

## STEP 9 - Use  the data to answer the question

To make this project more practical, let's try to answer some questions:

1. _Which gymnasts (junior/senior) got the highest mark in the free exercises at the competition in Bydgoszcz?_

   Junior: LEKHAC Tomasz & CZARNECKI Aleksander - 12,950 pts.

   Senior: SASNAL Filip - 13,600 pts.

2. _How many gymnasts achieved a high score (better than 1 SD) in bar exercises at the competition in Zabrze?_

    Three gymnasts - 2 senior and 1 junior

3. _Which players got a particularly high execution score (better than 1 SD) at the competition in Krakow?_

    LEKHACK Tomasz, BRACKI Borys and KUROWSKI Jakub

4. _On which apparatus during the competition in Gdańsk, several players received the highest mark?_

    On floor exercise and still rings.

5. _Who was the best floor exercise gymnast in 2022? (Highest year score) from senior? Which competitor got the highest score for difficulty and which for performance?_

    The best gymnasts on floor exercise was SANSAL Filip with 39.450 pts. He also had the highest score for difficulty 17.4 pts. The best perfomer was BRACKI Borys.

6. _How many grades in pommel horse exercises fail to meet the FIG minimum requirements?_

   Seventeen - five senior and twelve junior scores.

7. _How many juniors get a D score above average in still rings exercises?_

    Four juniors.

8. _Which gymnasts in 2022 averaged the highest marks on a vault? (Top3)_

    Senior: SASNAL Filip, KUROWSKI Jakub, GARCZAREK Kacper

    Junior: KWIATKOWSKI Michał, CZARNECKI Aleksander, KOPERSKI Filip

9. _Who got the highest mark in parallel exercises in 2022 among juniors?_

    LEKHAC Tomasz with 13.300 pts.

10. _What was the highest score for the difficulty in exercises on horizontal bar?_

    4.9 pts. - GARNCZAREK Kacper

11. _Knowing that a team at international competitions consists of at least three gymnasts, indicate the names of those who could represent their country in 2023_

    Senior: SASNAL Filip, GARCZAREK Kacper and KUROWSKI Jakub
    Junior: LEKHAC Tomasz, KUZDRA Christian and KWIATKOWSKI Michał

## SUMMARY

At this stage, I considered project 3 to be temporarily closed. Thanks to the tool which is excel, we managed to go from pdf files to the annual summary of the results of all competitors from 2022. Thanks to the calculations made, we met the best gymnasts on individual apparatus and we know how the results are distributed. Like any project, this one is not without flaws. In this part, I will try to discuss the decisions made in it and their consequences, pointing to its strengths and weaknesses.