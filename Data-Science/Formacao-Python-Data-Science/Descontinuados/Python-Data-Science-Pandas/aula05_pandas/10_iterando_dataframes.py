import pandas as pd
linha = '-'*60
dataset = pd.read_csv('../data/db.csv', sep=';', index_col=0)

'''for item in dataset:
    print(item)'''  # melhor não

# iterrows()
'''iterrows = list(dataset.iterrows())
print(iterrows)'''

for index, row in dataset.iterrows():
    if (2019 - row['Ano']) != 0:
       km_media = row['Quilometragem'] / (2019 - row['Ano'])
       dataset.loc[index, 'Km_media'] = km_media
    else:
        dataset.loc[index, 'Km_media'] = 0

print(dataset)
