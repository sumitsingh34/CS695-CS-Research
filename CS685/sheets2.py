import pygsheets
path="credentials1.json"
gc=pygsheets.authorize(service_account_file=path)
sh=gc.open('Student Evaluations (Responses)')
wk1=sh[0]
df=wk1.get_as_df(index_column=1)
df = df.rename(columns={'Timestamp': 'Stamp', 'Enter Course ID:': 'Course_ID', 'Professor provided timely feedback on course work  ': 'Q1',
        'Professor treated students with respect ': 'Q2' ,
        'Professor provided clear expectations of students ': 'Q3',
        'Professor interacted positively with students. - ': 'Q4',
        'I believe I can approach Professor for help ': 'Q5',
        'Professor was prepared for the class  ': 'Q6',
        'Professor encouraged students to be engaged in the course': 'Q7',
        'Professor demonstrated enthusiasm for the course. - ': 'Q8',
        'What would have helped you learn better?  ': 'Q9',
        '  What were the best things about this course?  ': 'Q10',
        'Do you have additional feedback or comments about the course?  ': 'Q11',
        'Professor made good use of time': 'Q12',
        'The assignments/ tasks/homework helped me learn the course content ': 'Q13',
        'The method of grading in the course was clearly explained': 'Q14',
        'Professor was responsive and available outside of class time': 'Q15',
        'The overall difficulty of the course was  ': 'Q16',
        'What grade do you expect to earn in the class?  ': 'Q17',
        'Give your instructor a grade  ': 'Q18'
})
print(df)
import pandas as pd
from sqlalchemy import create_engine
my_conn=create_engine("mysql://uaydgkhuwsvfjinv:UQ2ZJHfIFrzHJjFKP3LU@bt1ewgierjmj2kljrpcj-mysql.services.clever-cloud.com:3306/bt1ewgierjmj2kljrpcj")
df.drop(columns=df.columns[-1], axis=1,inplace=True)
df.to_sql(con=my_conn,name='Responses',if_exists='append')