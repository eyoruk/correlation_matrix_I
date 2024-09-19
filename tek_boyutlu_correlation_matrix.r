tek_boyutlu_correlation_matrix.r

# .csv dosyasi ile calisir
# csv yi excel e cevirelim / dikkat sütun ekliyor, -1 ile silmek lazım
# kurulacak paketler
    # install.packages("Hmisc")
    # install.packages("corrplot")

# hem excel i hem de csv yi -1 yapman lazım sütunlarda
> a = readxl::read_excel("tek_boyutlu_korelasyon.xlsx")
> a1 = a[,-1]
> View(a1)
> b = write.csv(a1, file = "tek_boyutlu_korelasyon.csv")
> View(b)

                                                            # correlation matrix commands
# bolum1
> data = read.csv("tek_boyutlu_korelasyon.csv", header = TRUE, fileEncoding = "latin1")
> head(data)
    # burada problemi goreceksin, hala csv icin de fazladan sutun olacak
> data1 = data[,-1]
> data1
> head(data)
> head(data1)
> cor_data = cor(data1)
> print(cor_data)

# bolum_2
> library(Hmisc)
> p_values <- rcorr(as.matrix(data))
> print(p_values)

# bolum_3
> library(corrplot)
> corrplot(cor_data, method="number")
> corrplot(cor_data, method="circle")
> corrplot(cor_data, method="pie")
> corrplot(cor_data, method="color")


# heat_map_benzeri
library(ggcorrplot)
ggcorrplot(cor(data1))

# degiskeni kontrol et
library(ggcorrplot)
ggcorrplot(cor(cor_data))


# eski komutlar
x = read.csv("denemecsv.csv")
xlsx::write.xlsx(x, "denemex.xlsx")
    xlsx::write.xlsx(as.matrix(x), "denemex.xlsx")
ya da
y = readxl::read_excel("denemex.xlsx")
View(y)
z = y[,-1]
View(z)
xlsx::write.xlsx(as.matrix(z), "denemez.xlsx")

# excel i csv ye cevirelim
n = readxl::read_excel("safxlsx.xlsx")
nn = n[,-1]
write.csv(nn, "saf2.csv")

data = read.csv("ford_escort.csv", header = TRUE, fileEncoding = "latin1")
head(data)
View(data)
cor_data = cor(data)
print(cor_data)

library(Hmisc)
p_values <- rcorr(as.matrix(data))
print(p_values)

library(corrplot)
corrplot(cor_data, method="circle")
corrplot(cor_data, method="pie")
corrplot(cor_data, method="color")
corrplot(cor_data, method="number")

https://www.geeksforgeeks.org/correlation-matrix-in-r-programming/

# ev odevi
http://www.sthda.com/english/wiki/correlation-matrix-a-quick-start-guide-to-analyze-format-and-visualize-a-correlation-matrix-using-r-software