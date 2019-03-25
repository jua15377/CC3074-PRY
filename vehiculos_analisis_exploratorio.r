
vehiculos <- read.csv("VehiculosInvolucradosLimpio.csv")

# clear index of the table
vehiculos$X <- NULL
# setting cualitative variables here
str(vehiculos)
vehiculos$depto_ocu <- factor(vehiculos$depto_ocu)
vehiculos$dia_sem_ocu <-factor(vehiculos$dia_sem_ocu)
vehiculos$area_geo_ocu <-factor(vehiculos$area_geo_ocu)
vehiculos$zona_ocu    <-factor(vehiculos$zona_ocu)
vehiculos$sexo_per    <-factor(vehiculos$sexo_per)
vehiculos$estado_per  <-factor(vehiculos$estado_per)
vehiculos$tipo_veh    <-factor(vehiculos$tipo_veh)
vehiculos$color_veh   <-factor(vehiculos$color_veh)
vehiculos$modelo_veh  <-factor(vehiculos$modelo_veh)
vehiculos$tipo_eve    <-factor(vehiculos$tipo_eve)
vehiculos$mayor_menor <-factor(vehiculos$mayor_menor)
vehiculos$marca_veh   <-factor(vehiculos$marca_veh)
vehiculos$g_edad_pil <-factor(vehiculos$g_edad_pil)
summary(vehiculos)
head(vehiculos)
barplot(table(vehiculos$depto_ocu),xlab = "Departamento de ocurrencia", ylab = "Frecuencia", main = "Vehículos involucrados por departamento de ocurrencia")
barplot(table(vehiculos$dia_sem_ocu),xlab = "Dia de ocurrencia", ylab = "Frecuencia", main = "Vehículos involucrados por dia de ocurrencia", names.arg = c("lunes","martes","miercoles", "jueves", "viernes", "sabado", "domingo"))
barplot(table(vehiculos$area_geo_ocu),xlab = "Area de ocurrencia", ylab = "Frecuencia", main = "Vehículos involucrados por area de ocurrencia", names.arg = c("urbana", "rural"))
barplot(table(vehiculos$sexo_per),xlab = "Sexo", ylab = "Frecuencia", main = "Vehículos involucrados segun sexo del conductor", names.arg = c("masculino","Femenino","ignorado"))
barplot(table(vehiculos$estado_per),xlab = "Estado de conductor", ylab = "Frecuencia", main = "Vehículos involucrados segun estado del conductor", names.arg = c("Normal","intoxicado","ignorado"))
barplot(table(vehiculos$tipo_veh),xlab = "tipo de vehiculo", ylab = "Frecuencia", main = "Vehículos involucrados segun tipo de vehiculo", names.arg = c("Automóvil","Camioneta sport","Pick up","Motocicleta","Camion","Cabezal","Bus extraurbano","Jeep","Microbús","Taxi","Panel", "Bus urbano","Tractor","Moto taxi","Furgon","Grua","Bus escolar","Bicicleta","Montacargas","Cuatrimoto","Ignorado"))
barplot(table(vehiculos$hora_ocu),xlab = "Hora del dia", ylab = "Frecuencia", main = "Vehículos involucrados segun hora del dia" )
#histogramas  y caja y bigotesde edades
data <- vehiculos
data <- subset(data, edad_per !=999)
hist(data$edad_per)
boxplot(data$edad_per)
#################################################
#hechos
hechos <- read.csv("HechosTransitoLimpio.csv")

# clear index of the table
hechos$X <- NULL
# setting cualitative variables here
# str(hechos)
hechos$dia_ocu <- factor(hechos$dia_ocu)
hechos$hora_ocu <- factor(hechos$hora_ocu)
hechos$mes_ocu <- factor(hechos$mes_ocu)
hechos$año_ocu <- factor(hechos$año_ocu)
hechos$causa_acc <- factor(hechos$causa_acc)
hechos$num_hecho <- factor(hechos$num_hecho)
hechos$mupio_ocu <- factor(hechos$mupio_ocu)
hechos$depto_ocu <- factor(hechos$depto_ocu)
hechos$dia_sem_ocu <-factor(hechos$dia_sem_ocu)
hechos$areag_ocu <-factor(hechos$areag_ocu)
hechos$zona_ocu    <-factor(hechos$zona_ocu)
hechos$sexo_pil    <-factor(hechos$sexo_pil)
hechos$estado_pil  <-factor(hechos$estado_pil)
hechos$tipo_veh    <-factor(hechos$tipo_veh)
hechos$color_veh   <-factor(hechos$color_veh)
hechos$modelo_veh  <-factor(hechos$modelo_veh)
hechos$mayor_menor <-factor(hechos$mayor_menor)
hechos$marca_veh   <-factor(hechos$marca_veh)
hechos$g_modelo_veh <- factor(hechos$g_modelo_veh)
hechos$corre_base <- factor(hechos$corre_base)
hechos$edad_quinquenales <- factor(hechos$edad_quinquenales)
hechos$g_edad <-factor(hechos$g_edad)

summary(hechos)
head(hechos)
barplot(table(hechos$depto_ocu),xlab = "Departamento de ocurrencia", ylab = "Frecuencia", main = "Vehículos involucrados por departamento de ocurrencia")
barplot(table(hechos$dia_ocu),xlab = "Día del mes", ylab = "Frecuencia", main = "Vehículos involucrados por día del mes de ocurrencia")
barplot(table(hechos$mes_ocu),xlab = "Mes del año", ylab = "Frecuencia", main = "Vehículos involucrados por mes del año de ocurrencia")
barplot(table(hechos$hora_ocu),xlab = "Hora de ocurrencia", ylab = "Frecuencia", main = "Vehículos involucrados por hora de ocurrencia")
barplot(table(hechos$dia_sem_ocu),xlab = "Dia de ocurrencia", ylab = "Frecuencia", main = "Vehículos involucrados por dia de ocurrencia", names.arg = c("lunes","martes","miercoles", "jueves", "viernes", "sabado", "domingo"))
#barplot(table(hechos$area_geo_ocu),xlab = "Area de ocurrencia", ylab = "Frecuencia", main = "VehÃ?culos involucrados por area de ocurrencia", names.arg = c("urbana", "rural"))
barplot(table(hechos$sexo_pil),xlab = "Sexo", ylab = "Frecuencia", main = "Vehículos involucrados segun sexo del conductor", names.arg = c("Masculino","Femenino","ignorado"))
barplot(table(hechos$estado_pil),xlab = "Estado de conductor", ylab = "Frecuencia", main = "Vehículos involucrados segun estado del conductor", names.arg = c("Normal","intoxicado","ignorado"))
#barplot(table(hechos$tipo_veh),xlab = "tipo de vehiculo", ylab = "Frecuencia", main = "VehÃ?culos involucrados segun tipo de vehiculo", names.arg = c("AutomÃ³vil","Camioneta sport","Pick up","Motocicleta","Camion","Cabezal","Bus extraurbano","Jeep","MicrobÃºs","Taxi","Panel", "Bus urbano","Tractor","Moto taxi","Furgon","Grua","Bus escolar","Bicicleta","Montacargas","Cuatrimoto","Ignorado"))
#barplot(table(hechos$hora_ocu),xlab = "Hora del dia", ylab = "Frecuencia", main = "VehÃ?culos involucrados segun hora del dia" )
#histogramas de edades
data <- hechos


data <- subset(hechos, edad_pil !=999)
hist(data$edad_pil)

# Correlation for numerical variables
# 1) Vehiculos
numeric_variables <- select(vehiculos, dia_ocu, mes_ocu, dia_sem_ocu, hora_ocu, edad_per)
summary(numeric_variables)
cor(numeric_variables, method = c("pearson", "kendall", "spearman"))

# 2) Personas
numeric_variables <- select(fallecidos, dia, ano, hora, edad)
summary(numeric_variables)
cor(numeric_variables, method = c("pearson", "kendall", "spearman"))

# 3) Hechos
numeric_variables <- select(hechos, dia_ocu, ano_ocu, hora_ocu, edad_pil)
summary(numeric_variables)
cor(numeric_variables, method = c("pearson", "kendall", "spearman"), use = "pairwise.complete.obs")

