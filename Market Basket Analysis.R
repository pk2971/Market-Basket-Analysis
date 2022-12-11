install.packages('arules')
library(arules)
install.packages('arulesViz')
library(arulesViz)
library(datasets)
Groceries<-read.csv('Downloads/groceries.csv')
data("Groceries")
itemFrequencyPlot(Groceries,topN=20,type="absolute")
# From the plot we can observe that the most purchased item is whole milk, vegetables followed by 
# rolls/buns and soda

# Establish the rules for the apriori algorithm
# We will use minimum support=0.001 and confidence=0.8

rules<-apriori(Groceries,parameter=list(supp=0.001,conf=0.8))
options(digits=2)
inspect(rules[1:5])

# We sort the rules by confidence
rules<-sort(rules,by='confidence',decreasing = TRUE)
inspect(rules[1:5])
rules

# Some rules are too long. We will stick to 3 items in data set
rules<-apriori(Groceries,parameter=list(supp=0.001,conf=0.8,maxlen=3))
rules<-sort(rules,by='confidence',decreasing = TRUE)
options(digits=2)
inspect(rules[1:5])
# Removing the redundant rules
is.redundant(rules)
rules_non_redundant <- rules[!is.redundant(rules)]
inspect(rules_non_redundant[1:5])
rules<-rules_non_redundant

# We will now try to find targeted rules. We will use 'whole milk' as RHS and try to see
# what other grocery items it will associate with 

rules<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08,minlen=2), 
               appearance = list(default="lhs",rhs="whole milk"),
               control = list(verbose=F))
rules<-sort(rules, decreasing=TRUE,by="confidence")
inspect(rules[1:5])


rules<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.15,minlen=2), 
               appearance = list(default="rhs",lhs="whole milk"),
               control = list(verbose=F))
rules<-sort(rules, decreasing=TRUE,by="confidence")
inspect(rules[1:5])

# Now we do the same analysis for soda and see what items are being bought along with it
rules<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08,minlen=2), 
               appearance = list(default="lhs",rhs="soda"),
               control = list(verbose=F))
rules<-sort(rules, decreasing=TRUE,by="confidence")
inspect(rules[1:5])


rules<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.08,minlen=2), 
               appearance = list(default="rhs",lhs="soda"),
               control = list(verbose=F))
rules<-sort(rules, decreasing=TRUE,by="confidence")
inspect(rules)







































