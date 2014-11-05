require(ggplot2)
require(dplyr)

artistas.anos <- read.csv("artist_year_hotness.csv")
artistas.termos <- read.csv("artist_term.csv")

artistas.tags <- merge(artistas.anos, artistas.termos, by = "artist_id")
at.group <- group_by(artistas.tags, term, year)
atgroup.soma <- summarise(at.group, count=n())

ggplot(atgroup.soma, aes(x=year, y=count, fill=term)) +
  geom_area() +  xlab("Ano") + ylab("Quantidade de musicas") + ggtitle("Quantidade de musicas por genero ao longo do tempo")



