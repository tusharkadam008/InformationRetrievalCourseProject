
# coding: utf-8

# In[64]:


import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.neural_network import MLPClassifier
from sklearn.metrics import classification_report,confusion_matrix


# In[65]:


image = pd.read_csv('final.csv')
X=image.drop(image.columns[[0,314]], axis=1)
y=image[image.columns[314]]


# In[66]:


X_train, X_test, y_train, y_test = train_test_split(X, y)


# In[67]:


scaler = StandardScaler()
scaler.fit(X)


# In[68]:


X_train = scaler.transform(X_train)
X_test = scaler.transform(X_test)


# In[93]:


mlp = MLPClassifier(hidden_layer_sizes=(13),max_iter=5000)


# In[94]:


mlp.fit(X_train,y_train)


# In[95]:


predictions = mlp.predict(X_test)
print(mlp.score(X_test,y_test));

