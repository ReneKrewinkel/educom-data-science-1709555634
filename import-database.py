import pandas as pd
import sqlalchemy as sq

df = pd.read_csv('world-population.csv')

# Splitting into two tables
df_table1 = df[['Rank', 'CCA3', 'Country/Territory', 'Continent', 'Area (km²)']]
df_table2 = df[['Country/Territory', '2022 Population', '2020 Population', '2015 Population', '2010 Population', '2000 Population', '1990 Population', '1980 Population', '1970 Population']]
df_table3 = df[['Country/Territory' ,'Density (per km²)', 'Growth Rate', 'World Population Percentage']]

# Add auto-incrementing primary key to table 1
df_table1.insert(0, 'id', df_table1.index + 1)


# Generate foreign key in table 2 to relate to the ID of table 1
df_table2 = df_table2.melt(id_vars=['Country/Territory'], var_name='Year', value_name='Population')
df_table2 = df_table2.merge(df_table1[['id', 'Country/Territory']], on='Country/Territory', how='left')
df_table2.drop(columns=['Country/Territory'], inplace=True)
df_table2.rename(columns={'id': 'country_id'}, inplace=True)
df_table2['Year'] = df_table2['Year'].str.slice(stop=4)
df_table2.insert(0, 'id', df_table2.index + 1)

df_table3 = df_table3.merge(df_table1[['id', 'Country/Territory']], on='Country/Territory', how='left')
df_table3.drop(columns=['Country/Territory'], inplace=True)
df_table3.rename(columns={'id': 'country_id'}, inplace=True)
df_table3.insert(0, 'id', df_table3.index + 1)

engine = sq.create_engine('mysql+pymysql://root@localhost/world_population?charset=utf8mb4')
df_table1.to_sql('table1', engine, if_exists='replace', index=False)
df_table2.to_sql('table2', engine, if_exists='replace', index=False)
df_table3.to_sql('table3', engine, if_exists='replace', index=False)