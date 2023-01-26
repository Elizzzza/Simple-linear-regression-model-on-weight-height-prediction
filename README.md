# Apply simple linear regression model to investigate the relationship between weight/height and age in WCGS dataset
#### BIOST 515/518 Assignment 1
#### Instructor:  Amy Willis

## Background
The Western Collaborative Group Study (WCGS) began in 1960 with 3,524 male volunteers who were
employed by 11 California companies. Subjects were 39 to 59 years old and free of heart disease as determined
by an electrocardiogram. After the initial screening, the study population dropped to 3,154 and the number of
companies to 10 because of various exclusions. The cohort comprised both blue- and white-collar employees.
At baseline the following information was collected: socio-demographic including age, education, marital status,
income, occupation; physical and physiological including height, weight, blood pressure, electrocardiogram,
and corneal arcus; biochemical including cholesterol and lipoprotein fractions; medical and family history and
use of medications; behavioral data including smoking, exercise, and alcohol use. Later surveys added data
on anthropometry, triglycerides, Jenkins Activity Survey, and caffeine use. Average follow-up continued for
8.5 years with repeat examinations.

## Data set
Data from the WCGS is available under “Datasets” as wcgs.csv. The variables are coded as follows:
* ***id***: participant ID
* ***age0***: age in years at start of study
* ***height0***: height in inches at start of study
* ***weight0***: weight in pounds at start of study
* ***sdp0***: systolic blood pressure in mm Hg at start of study
* ***dbp0***: diastolic blood pressure in mm Hg at start of study
* ***chol0***: Fasting serum cholesterol in mm/100g at start of study
* ***behpat0***: behavior type, a category with levels 1, 2, 3 and 4 (assessed at start of study)
* ***ncigs0***: number of cigarettes smoked per day
* ***dibpat0***: Dichotomous behavior pattern: 0 = Type B; 1 = Type A
* ***chd69***: Coronary heart disease event at 8 1/2 year follow up: 0 = none; 1 = yes
* ***typechd***: type of coronary heart disease. 0 = none, 1 = myocardial infarction or death, 2 = silent myocardial infarction, 3 = angina perctoris.
* ***time169***: Observation (follow up) time: Days
* ***arcus0***: Corneal arcus: 0 = none; 1 = yes

## Questions
1. Make a scatterplot of weight on the vertical axis and height on the horizontal axis. Based on this data, do you believe there is a linear relationship between weight and height in this population? Why or why not?
2. Perform a simple linear regression of weight on height using the WCGS data. In 1-3 carefully written sentences, summarize the results in language suitable for a scientific publication.
3. Contrast the heteroscedasticity-robust standard error in the estimate of the slope coefficient to a standard error obtained assuming homoscedasticity, and comment. Which do you prefer and why?
4. Comment on the reasonableness of using the fitted linear regression to estimate the mean weight of men from this population who are 70 inches tall.
5. Comment on the reasonableness of using the fitted linear regression to estimate the mean weight of an adolescent boy who is 42 inches tall.
6. Convert height from inches to centimeters and fit a new simple linear regression model. Interpret the fitted model parameters and compare/contrast your results to those from Question 2.
7. Participant 2001 (aged 49 y.o.) weighed 150 pounds and was 73 inches tall. Which do you think is a better prediction of the weight of another 73 inch tall man from this population: the observed weight of Participant 2001 of 150 pounds, or the fitted value from the simple linear regression that you fit? Why?
