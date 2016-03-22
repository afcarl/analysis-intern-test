
DataScience's Analysis Assessment
================================

This is an at-home exercise that we use as part of our standard interview process for intern positions requiring analytical work.

## Instructions

* For each question, please download any associated files. 
* Write queries, scripts, or write ups as prompted to answer the questions listed below
* Email your responses to analysisassessment@datascience.com. with subject line "Analysis Intern Assessment"
* If we haven't already received it, please attach your resume to your email.
* You may use any resources you like to complete this.  For a simple solution, consider http://sqlfiddle.com/ or SQLite
* On sql related questions, we are looking for your ability to understand a schema that has incomplete documentation. We are also looking for diligence and attention to detail.

## Questions

1: Looking at the question_1.sql file, you'll find 3 tables: transaction_type, status_type, and transactions. Using the transactions table and the information provided in the lookups, please answer the following question: Calculate the average time between a customer's second to last to purchase and the cancellation of their account.

The python code below might help make the sql data more accessible:

```
import sqlite3
filePath = path/to/.sql file
con = sqlite3.connect('DataScienceDatabase')
f = open(filePath, 'r')
sql = f.read() 
queries = sql.split(";")
for query in queries:
    con.execute(query)

c = con.cursor()
c.execute("select * from transaction")
data = c.fetchall()
```


2: Write a method that gives the OLS estimate and variance for the parameters of a linear model, using numpy or other libraries to store array types. Report the results of your estimates using data found in `question_2.csv`.

3: Write a function that takes a list and returns the frequency count of each element in the list.

4: Given the probability distribution found in `question_4.py` (x -> p(x)), compute the expected value and entropy.

5: A fictitious school developed a database containing a table called "student_scores" containing the fields `student_id,grade,class` taken by all students. student_id is an integer, grade is a double and class is a varchar(1). class element of (A,B,C,D,E,F,G,H,I). Your are tasked to find the best student who has taken class A, B, and C that year. We define the best student has the student who has had the best average grade in those three classes combined. All classes have the same weight in the calculation of the mean grade. Note that students who have taken class A, B and C that year could also have taken any classes in (D,E,F,G,H,I). Write down the SQL query to extract the student_id and average grade of the best student in classes A,B, and C combined.  

6: Compute the eigenvalues and eigenvectors of the matrix [ [2,1], [1,2] ]. Is this eigenbasis orthonormal? Use the eigenvectors found above and represent vector [-5,-17] as a linear combination of those eigenvectors. Write down the coefficients of that decomposition.




