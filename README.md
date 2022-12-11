# Market-Basket-Analysis
Association analysis using the Apriori algorithm in R language.

R language code in the repository. 

Will upload results and observations in ReadMe soon.

## Rules for whole milk


 lhs                                             rhs          support confidence coverage lift
 
[1] {rice, sugar}                                => {whole milk} 0.0012  1          0.0012   3.9 

[2] {canned fish, hygiene articles}              => {whole milk} 0.0011  1          0.0011   3.9 

[3] {root vegetables, butter, rice}              => {whole milk} 0.0010  1          0.0010   3.9 

[4] {root vegetables, whipped/sour cream, flour} => {whole milk} 0.0017  1          0.0017   3.9 

[5] {butter, soft cheese, domestic eggs}         => {whole milk} 0.0010  1          0.0010   3.9 



  lhs                                             rhs          support confidence coverage lift
  
[1] {rice, sugar}                                => {whole milk} 0.0012  1          0.0012   3.9 

[2] {canned fish, hygiene articles}              => {whole milk} 0.0011  1          0.0011   3.9 

[3] {root vegetables, butter, rice}              => {whole milk} 0.0010  1          0.0010   3.9 

[4] {root vegetables, whipped/sour cream, flour} => {whole milk} 0.0017  1          0.0017   3.9 

[5] {butter, soft cheese, domestic eggs}         => {whole milk} 0.0010  1          0.0010   3.9 


## Rules for soda


lhs                                                rhs    support confidence coverage lift

[1] {coffee, misc. beverages}                       => {soda} 0.0010  0.77       0.0013   4.4 

[2] {yogurt, rolls/buns, bottled water, newspapers} => {soda} 0.0010  0.77       0.0013   4.4 

[3] {sausage, bottled water, bottled beer}          => {soda} 0.0011  0.73       0.0015   4.2 

[4] {sausage, white bread, shopping bags}           => {soda} 0.0010  0.67       0.0015   3.8 

[5] {rolls/buns, bottled water, chocolate}          => {soda} 0.0013  0.65       0.0020   3.7 



 lhs       rhs                support confidence coverage lift count
 
[1] {soda} => {whole milk}       0.040   0.23       0.17     0.90 394  

[2] {soda} => {rolls/buns}       0.038   0.22       0.17     1.20 377  

[3] {soda} => {other vegetables} 0.033   0.19       0.17     0.97 322  

[4] {soda} => {bottled water}    0.029   0.17       0.17     1.50 285  

[5] {soda} => {yogurt}           0.027   0.16       0.17     1.12 269
