# Pewlett-Hackard-Analysis
## Module 7 Challenge

## Introduction - Overview of the analysis:

The following report and analysis were developed in order to help the manager prepare for the upcoming "silver tsunami" in which the company is going to lose a considerable amount of its employees to retirement.  In order to prepare for this, the analysis not only reports on total numbers, but also identifies the next tear of employees who will be retiring and can participate in a mentoring program.  

The data was available in separate tables and after careful inspection merging and sorting the following results were extracted in order to aid management for future decisions regarding hiring replacements of retiring employees by looking at the job titles and which departments will be impacted.  

A visual representation of the existing database structure and an example of the process can be found in the following figures

insert PATH\EmployeeDB.png

insert PATH\EmployeeDB_manipulation_example.png


Furthermore, the analysis was expanded in order to identify the next tear of retiring employees, and select candidates for a Mentoring Program.   These Candidates will train and guide either existing or new employees to fill in the gaps of the retiring staff and is also depicted bellow.   

## Current Retiring Employees and Their Titles 

An extensive Retiring table (retirement_titles.csv) was developed to identify all the employees who will be leaving their positions.  The query was written and executed to create a Retirement Titles table for employees who were born between January 1, 1952, and December 31, 1955. This large number of retiring employees creates the need to either promote or hire new qualified staff. 

The table can be found in the following directory

insert PATH\retirement_titles.csv

From an excerpt of the table seen in the figure bellow, it can be seen that some retiring employees have held different positions along the years but, only the current position will be left open when they leave the company.    

insert PATH\retirement_titles_excerpt

Further extraction of the retiring employees latest title generates a new list however;

insert PATH\unique_titles.csv

An excerpt can be seen in;

insert PATH\unique_titles_excerpt.png

Representing a unique title per employee, unique_titles.csv table shows that each employee currently holds only one title and therefore this position will need to be filled in order to provide the company with a smooth transition into the future and insure performance at the same level of productivity.

A summary table of the numbers of positions for each title that will need to be filled is summarized in the following table

insert PATH\retiring_titles.pdf

and can be accessed  in; 

insert PATH\retiring_titles.csv


## Mentoring Program Candidates Identification

This analysis also identifies the next tear of employees who will be retiring and can participate in a mentoring program in order to further ensure a smooth transition of retiring employees to new employees or newly promoted existing employees.

The mentorship-eligibility table listing current employees who were born between January 1, 1965, and December 31, 1965 was generated and can be found in; 

insert PATH\mentorship_eligibility.csv

This list is also quite extensive which flags out how large the next tear of retiring employees is but also provides an opportunity to develop a Mentoring Program that will ensure a smooth transition into the future of the company. 


Re-Iterating the Results: 

	*  The upcoming "silver tsunami" in which the company is going to lose a 				considerable amount of its employees to retirement (72,458 retiring employees)

	*  The number of employees represents the number of positions that will need to be 			filled in the near future.

	*  The analysis revealed that a large amount of highly technical employees will be 			needed in the future.  25,916	Senior Engineers, 9,285	Engineers and 1,090 			Assistant Engineers.  This is not a small endeavor....
	
	*  Furthermore 24,926 Senior Staff, 7,636 Staff, as well as 3,603 Technique Leaders, 		and 2 Managers will also be needed.

	*  There are also good Mentoring Candidates in the next tear of 						employees to provide a some transition into the future. 1,940 to be exact.

	*  However, 1,940 Mentoring Candidates in comparison to 72,458 seems like a very 			small number. 

	*  Further breakdown of the mentoring candidates can be seen in a quick pivot table 		which was generated in Excel given that the database extraction yielded 			smaller sized lists that can be imported into Excel for quick and easy 				analysis.

insert PATH\mentorship_eligibility_pivot.pdf


## Summary: 

There will be 72,458 retiring employees retiring when the upcoming "silver tsunami" begins to make an impact.
Unfortunately, there seems to be only a small amount of retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. 1,940 Mentoring Candidates to be precise.  A comparison by Title numbers of candidates to new employees can be seen in the following summary table. 

insert PATH\Summary_Table.pdf


Suggestion of a breakdown by department would also make sense from a management perspective, however, the number of total candidates seems overall very low ranging from 1 Mentor per 100 new employees to as high as 7 mentors per 100 new employees.  Perhaps other options may be worthwhile exploring, such as expanding mentorship program to younger employees and/or promoting from within the existing pool of employees in each department given their familiarity with the company work processes.

