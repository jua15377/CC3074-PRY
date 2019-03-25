
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
# fallecidos
fallecidos <- read.csv("HechosTransitoLimpio.csv")

# clear index of the table
fallecidos$X <- NULL
# setting cualitative variables here
str(fallecidos)
fallecidos$dia_ocu <- factor(fallecidos$dia_ocu)
fallecidos$hora_ocu <- factor(fallecidos$hora_ocu)
fallecidos$mes_ocu <- factor(fallecidos$mes_ocu)
fallecidos$ano_ocu <- factor(fallecidos$ano_ocu)
fallecidos$causa_acc <- factor(fallecidos$causa_acc)
fallecidos$num_hecho <- factor(fallecidos$num_hecho)
fallecidos$mupio_ocu <- factor(fallecidos$mupio_ocu)
fallecidos$depto_ocu <- factor(fallecidos$depto_ocu)
fallecidos$dia_sem_ocu <-factor(fallecidos$dia_sem_ocu)
fallecidos$areag_ocu <-factor(fallecidos$areag_ocu)
fallecidos$zona_ocu    <-factor(fallecidos$zona_ocu)
fallecidos$sexo_pil    <-factor(fallecidos$sexo_pil)
fallecidos$estado_pil  <-factor(fallecidos$estado_pil)
fallecidos$tipo_veh    <-factor(fallecidos$tipo_veh)
fallecidos$color_veh   <-factor(fallecidos$color_veh)
fallecidos$modelo_veh  <-factor(fallecidos$modelo_veh)
fallecidos$mayor_menor <-factor(fallecidos$mayor_menor)
fallecidos$marca_veh   <-factor(fallecidos$marca_veh)
fallecidos$g_modelo_veh <- factor(fallecidos$g_modelo_veh)
fallecidos$g_hora <- factor(fallecidos$g_hora)
fallecidos$g_hora_5 <- factor(fallecidos$g_hora_5)
fallecidos$corre_base <- factor(fallecidos$corre_base)
fallecidos$edad_quinquenales <- factor(fallecidos$edad_quinquenales)
fallecidos$g_edad <-factor(fallecidos$g_edad)
#clustering fallecidos
set.seed(3010)
fallecidos_importante <- select(fallecidos, dia_ocu, hora_ocu, edad_pil, areag_ocu, sexo_pil)  # Tomar variables importantes
indices_muestra<- sample(nrow(fallecidos_importante),nrow(fallecidos_importante)*0.2)  # Crear una muestra del 30% aleatoria
fallecidos_importante<-fallecidos_importante[indices_muestra,]
glimpse(fallecidos_importante)
gower_dist <- daisy(fallecidos_importante,
                    metric = "gower",
                    type = list(logratio = 3))  # Crear mtriz de distancia

# Calculate silhouette width for many k using PAM
sil_width <- c(NA)
for(i in 2:10){
  pam_fit <- pam(gower_dist,
                 diss = TRUE,
                 k = i)
  sil_width[i] <- pam_fit$silinfo$avg.width
  
}

# Plot sihouette width (higher is better)
plot(1:10, sil_width,
     xlab = "Number of clusters",
     ylab = "Silhouette Width")
lines(1:10, sil_width)



pam_fit <- pam(gower_dist, diss = TRUE, k = 2)

pam_results <- fallecidos_importante %>%
  mutate(cluster = pam_fit$clustering) %>%
  group_by(cluster) %>%
  do(the_summary = summary(.))

pam_results$the_summary


tsne_obj <- Rtsne(gower_dist, is_distance = TRUE)

tsne_data <- tsne_obj$Y %>%
  data.frame() %>%
  setNames(c("X", "Y")) %>%
  mutate(cluster = factor(pam_fit$clustering),
         name = fallecidos_importante$name)

ggplot(aes(x = X, y = Y), data = tsne_data) +
  geom_point(aes(color = cluster))

##clustering vehiculos
set.seed(3010)
vehiculos_importante <- select(vehiculos, dia_ocu, hora_ocu, edad_per, area_geo_ocu, sexo_per)  # Tomar variables importantes
indices_muestra<- sample(nrow(vehiculos_importante),nrow(vehiculos_importante)*0.3)  # Crear una muestra del 30% aleatoria
vehiculos_importante<-vehiculos_importante[indices_muestra,]
glimpse(vehiculos_importante)
gower_dist <- daisy(vehiculos_importante,
                    metric = "gower",
                    type = list(logratio = 3))  # Crear mtriz de distancia

# Calculate silhouette width for many k using PAM
sil_width <- c(NA)
for(i in 2:10){
  pam_fit <- pam(gower_dist,
                 diss = TRUE,
                 k = i)
  sil_width[i] <- pam_fit$silinfo$avg.width
  
}

# Plot sihouette width (higher is better)
plot(1:10, sil_width,
     xlab = "Number of clusters",
     ylab = "Silhouette Width")
lines(1:10, sil_width)



pam_fit <- pam(gower_dist, diss = TRUE, k = 3)

pam_results <- vehiculos_importante %>%
  mutate(cluster = pam_fit$clustering) %>%
  group_by(cluster) %>%
  do(the_summary = summary(.))

pam_results$the_summary


tsne_obj <- Rtsne(gower_dist, is_distance = TRUE)

tsne_data <- tsne_obj$Y %>%
  data.frame() %>%
  setNames(c("X", "Y")) %>%
  mutate(cluster = factor(pam_fit$clustering),
         name = vehiculos_importante$name)

ggplot(aes(x = X, y = Y), data = tsne_data) +
  geom_point(aes(color = cluster))


#cluster hechos
set.seed(3010)
hechos_importante <- select(hechos, hora_ocu, edad_pil, areag_ocu, tipo_veh, estado_pil, dia_sem_ocu)  # Tomar variables importantes
indices_muestra<- sample(nrow(hechos_importante),nrow(hechos_importante)*0.25)  # Crear una muestra del 30% aleatoria
hechos_importante<-hechos_importante[indices_muestra,]
glimpse(hechos_importante)
gower_dist <- daisy(hechos_importante,
                    metric = "gower",
                    type = list(logratio = 3))  # Crear mtriz de distancia

# Calculate silhouette width for many k using PAM
sil_width <- c(NA)
for(i in 2:6){
  pam_fit <- pam(gower_dist,
                 diss = TRUE,
                 k = i)
  sil_width[i] <- pam_fit$silinfo$avg.width
  
}

# Plot sihouette width (higher is better)
plot(1:6, sil_width,
     xlab = "Number of clusters",
     ylab = "Silhouette Width")
lines(1:6, sil_width)



pam_fit <- pam(gower_dist, diss = TRUE, k = 7)

pam_results <- hechos_importante %>%
  mutate(cluster = pam_fit$clustering) %>%
  group_by(cluster) %>%
  do(the_summary = summary(.))

pam_results$the_summary
tsne_obj <- Rtsne(gower_dist, is_distance = TRUE)

tsne_data <- tsne_obj$Y %>%
  data.frame() %>%
  setNames(c("X", "Y")) %>%
  mutate(cluster = factor(pam_fit$clustering),
         name = vehiculos_importante$name)

ggplot(aes(x = X, y = Y), data = tsne_data) +
  geom_point(aes(color = cluster))
