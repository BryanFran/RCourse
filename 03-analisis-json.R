install.packages("jsonlite")
library(jsonlite)

dat.1 = fromJSON("Tema1/students.json")
dat.2 = fromJSON("Tema1/student-courses.json")

#accerder a las direccoines con json
install.packages("curl")
library(curl)

dat.1$Name
