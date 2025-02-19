# Análise de Valores Ausentes

# Verifique se há valores ausentes (NA) no dataset `airquality` e, se houver, substitua-os pela média da coluna correspondente.

# carregando dados
data("airquality")

# primeiras linhas
head(airquality)

# dimensoes
dim(airquality)

# busca NA
is.na(airquality)

# total NA
sum(is.na(airquality))

# registros por id com NA
which(is.na(airquality))

# atributos com NA
colSums(is.na(airquality))

# substituindo NA pela media do atributo sem NA
airquality$Ozone[is.na(airquality$Ozone)] <- median(airquality$Ozone, na.rm=T)
airquality$Solar.R[is.na(airquality$Solar.R)] <- median(airquality$Solar.R, na.rm=T)

# conferindo
any(is.na(airquality))
