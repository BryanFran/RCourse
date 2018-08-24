auto = read.csv("Tema1/auto-mpg.csv", header = TRUE, sep = ",")
names(auto)
auto_no_header = read.csv("Tema1/auto-mpg-noheader.csv", header = F)
head(auto_no_header, 4)
auto_custom_header = read.csv("Tema1/auto-mpg-noheader.csv", header = F, 
                              col.names = c("numero", "millas_por_galeon", 
                                            "cilindrada", "desplazamiento", 
                                            "caballos_de_potencia", "peso", 
                                            "aceleracion", "año", "modelo"))
head(auto_custom_header, 2)

#N/A Not Available
#na.strings = ""
#as.character()