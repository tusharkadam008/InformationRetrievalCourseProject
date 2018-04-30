from pandas import read_csv
from sklearn.feature_selection import RFE
from sklearn.linear_model import LogisticRegression
import numpy as np

array = np.loadtxt('final.csv',delimiter=',')
X = array[:,0:313]
Y = array[:,313]
model = LogisticRegression()
rfe = RFE(model, 100)
fit = rfe.fit(X, Y)
print("Num Features: %d") % fit.n_features_
print("Selected Features: %s") % fit.support_
print("Feature Ranking: %s") % fit.ranking_
