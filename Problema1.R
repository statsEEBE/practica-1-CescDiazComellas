#Codigo para problema 1

mis_dades <- mtcars # assignar una base de dades a un nom

mis_dades$qsec # seleccionar les dades qsec

mean(mis_dades$qsec) #mitjana 

hist(mis_dades$qsec, breaks = 15) #histograma amb 15 intervals

cut(mis_dades$qsec, 9) #fara el mateix que histograma

table(cut(mis_dades$qsec, 9)) #frequencia absoluta

table(cut(mis_dades$qsec, 9))/32 # frequencia relativa

freq <- table(cut(mis_dades$qsec,9))/32
tabla <- data.frame(ni=freq,
                    fi=freq/32,
                    Ni=cumsum(freq),
                    Fi=cumsum(freq/32))

mis_dades$drat
hist(mis_dades$drat)
median(mis_dades$drat) # 1/2

sort(mis_dades$drat)


quantile(mis_dades$drat) #quartil 1/4

sort(mis_dades$mpg)
quantile(mis_dades$mpg,0.18) 

sort(mis_dades$cyl)
IQR(mis_dades$cyl) #rang interquartil 50% entre 25 i 75
          
var(mis_dades$cyl) #variança 
sd(mis_dades$cyl) #desviacio tipica
