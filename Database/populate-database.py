import sqlalchemy as SA 
import pandas as pd
import sys

engine = SA.create_engine("mysql+pymysql://root@localhost/world_population?charset=utf8mb4")

if sys.argv[-2] == "-q":
    file = sys.argv[-1]
    with open(file, "r") as f:
        sql = f.read()
    df = pd.read_sql(sql, engine)
    print(df)


#Python script CSV files lezen opdracht
file = pd.read_csv('world-population.csv')
print (file)