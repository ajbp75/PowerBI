#Pasta de Trabalho
setwd("E:/Fontes_Estudo/PowerBI/mini-projeto 02")
getwd()

#Pacotes
install.packages("dplyr")
install.packages("data.table")
install.packages("ggplot2")

#Carregar Dados
dados_iris <- iris
View(dados_iris)

#Tarefa 1 - M?dia das Species
library(dplyr)
medias_iris <- summarize(group_by(dados_iris, Species),
                        media_sepal_length = mean(Sepal.Length),
                        media_sepal_width = mean(Sepal.Width),
                        media_petal_length = mean(Petal.Length),
                        media_petal_width = mean(Petal.Width)
                        )
View(medias_iris)

#Tarefa 2 - Extrair o valor inteiro de uma das colunas decimais
library(data.table)
dados_iris_id <- data.table(dados_iris)
View(dados_iris_id)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)
View(dados_iris_id)


#Tarefa 3 - Construir um gr?fico mostrando a rela??o de duas vari?veis n?mericas
library(ggplot2)
ggplot(data = dados_iris, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(color = Species), Size = 3) +
  ggtitle("Largura e Comprimento das P?talas") +
  labs(x = "Largura da P?tala",
       y = "Comprimento da P?tala") +
  theme_bw() + 
  theme(title = element_text(size= 15, color = "turquoise4"))


#Cores dispon?veis na Linguagem R
colors()
  
  