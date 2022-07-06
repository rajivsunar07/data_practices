from venv import create
import pandas as pd
from sqlalchemy import create_engine

engine = create_engine("mysql+pymysql://root:root@localhost:3306/sql_practice")

employee_df = pd.read_sql_table("employee", engine)
department_df = pd.read_sql_query("select * from department", engine)

employee_department = pd.merge(left=employee_df, right=department_df, how="inner", left_on="department_id", right_on="id")
print(employee_department.head())