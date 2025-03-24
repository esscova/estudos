install.packages("openxlsx")
library(openxlsx)

write.csv(iris[,"Species"], "iris_classes.csv", row.names=F)
write.xlsx(iris[, -5], "iris_atributos.xlsx")

atributos <- readxl::read_excel('/content/iris_atributos.xlsx')
classes <- read.csv('/content/iris_classes.csv')

write.csv(atributos, "atributos.csv",row.names=F)
write.csv(classes, "classes.txt", row.names=F)

atributos_csv <- read.csv('/content/atributos.csv')
classes_txt <- read.delim('/content/classes.txt')


