#!/usr/bin/env python
# coding: utf-8

# In[56]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

#####EW_num_Histogram_2021+2022#####################################################################################################
data = pd.read_excel(f"C:\\Users\\Laura\\Documents\\Masterarbeit_2022\\Data_graphs\\Up_to_date_data\\03022022_DAT_202122_complete.xlsx", "Earthworm_data_202122")

plt.figure(figsize=(10,7.5))
#plot = sns.displot(data=data, x="EW_num", col="Year", col_wrap=2)

#sns.set_style("ticks")
colours = ["#0073e6", "#e8c90e"]

plot = sns.histplot(data=data, 
             x="EW_num", 
             hue="Year", 
             multiple="dodge",
             #binwidth=1.2,
             bins=15,
             shrink=0.8,
             legend=False,
             palette=colours,
             #width=0.8
             
                    
                   )


plt.xlabel("\nNumber of earthworms", size=15, labelpad=10)
plt.ylabel("Frequency count\n", size=15, labelpad=10)

plt.xticks(fontsize=15)
plt.yticks(fontsize=15)


plt.xlim(0,26)
plt.ylim(0,30)


sns.despine(top=True)

#plt.xticks(np.arange(0, 27, 5))



#plt.xticks(ticks=['0','1','2','3','4','5'])

#Now we use Matplotlib instead of seaborn to have the legend inside the figure.
#Specifying the position (loc), title and label sizes
legend = plt.legend(loc="upper right", title="Year", labels=["2021", "2022"], fontsize=12, title_fontsize=13, frameon=False)

#Change the number of characters shown in the legend to 4 (to avoid decimals)
for t in legend.texts:
    t.set_text(t.get_text()[:4])
    

plt.savefig(f"C:\\Users\\Laura\\Documents\\Masterarbeit_2022\\Data_graphs\\Graphs_ready\\Histogram_EW_num_202122.png")


##################################EW_g Histogram 2021+2022###################################################################
data = pd.read_excel(f"C:\\Users\\Laura\\Documents\\Masterarbeit_2022\\Data_graphs\\Up_to_date_data\\03022022_DAT_202122_complete.xlsx", "Earthworm_data_202122")

plt.figure(figsize=(10,7.5))
#plot = sns.displot(data=data, x="EW_num", col="Year", col_wrap=2)

#sns.set_style("ticks")
colours = ["#0073e6", "#e8c90e"]

plot = sns.histplot(data=data, 
             x="EW_g", 
             hue="Year", 
             multiple="dodge",
             #binwidth=1.2,
             bins=5,
             shrink=0.8,
             legend=False,
             palette=colours,
             #width=0.8
             
                    
                   )


plt.xlabel("\nEarthworm biomass (in g)", size=15, labelpad=10)
plt.ylabel("Frequency count\n", size=15, labelpad=10)

plt.xticks(fontsize=15)
plt.yticks(fontsize=15)


plt.xlim(0,12)
plt.ylim(0,40)


sns.despine(top=True)

plt.xticks(np.arange(0, 12, 2))



#plt.xticks(ticks=['0','1','2','3','4','5'])

#Now we use Matplotlib instead of seaborn to have the legend inside the figure.
#Specifying the position (loc), title and label sizes
legend = plt.legend(loc="upper right", title="Year", labels=["2021", "2022"], fontsize=12, title_fontsize=13, frameon=False)

#Change the number of characters shown in the legend to 4 (to avoid decimals)
for t in legend.texts:
    t.set_text(t.get_text()[:4])
    

plt.savefig(f"C:\\Users\\Laura\\Documents\\Masterarbeit_2022\\Data_graphs\\Graphs_ready\\Histogram_EW_g_202122.png")


# In[ ]:





# In[ ]:




