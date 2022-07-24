import pandas as pd
from sklearn.model_selection import train_test_split

R_NAME = "race:is_Asian-Pac-Islander"
S_NAME = "gender:is_Male"


if __name__ == "__main__":
    csv_name = "adult_norm.csv"
    df = pd.read_csv(csv_name, header=0)
    strat = df[S_NAME]
    CS_S, FAIR_S = train_test_split(df, test_size=0.4, stratify=strat)
    dfs_s = [CS_S, FAIR_S]
    s_res = pd.concat(dfs_s)
    s_res.to_csv("adult_S.csv")

    strat = df[R_NAME]
    CS_R, FAIR_R = train_test_split(df, test_size=0.4, stratify=strat)
    dfs_r = [CS_R, FAIR_R]
    r_res = pd.concat(dfs_r)
    r_res.to_csv("adult_R.csv")
