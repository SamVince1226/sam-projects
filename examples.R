shoppinglist = c("water","bread","milk","eggs","peaches","carrots")

purchasedtoday = vector()

for(item in 1:length(shoppinglist)){
  purchasedtoday[item] = shoppinglist[item]
}

testoutput = vector()
for(line in 1:nrow(df2)){
  
  testoutput[line] = df2$SampleID[line]
  
}
testoutput2 = vector()
for(line in 1:nrow(df2)){
  
  testoutput2[line] = df2$Treatment[line]
  
}
