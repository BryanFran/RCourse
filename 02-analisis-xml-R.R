install.packages("XML")
library(XML)

url = "Tema1/cd_catalog.xml"

xmldoc = xmlParse(url) #XMLIntervalDocument
#recuperar el nodo raiz del XML, el origen del fichero
rootnode = xmlRoot(xmldoc)

rootnode[3]

#convertir XML en DataFrame, formato intermedio
cds_data = xmlSApply(rootnode, function(x) xmlSApply(x, xmlValue))

cds.catalog = data.frame(t(cds_data), row.names = NULL)
head(cds.catalog, 2)

#xpathSApply()
#getNodeSet()

population_url = "Tema1/WorldPopulation-wiki.htm"
table = readHTMLTable(population_url)
most_populated = table[[6]]
head(most_populated, 3)
