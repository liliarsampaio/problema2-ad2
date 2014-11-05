require(ggplot2)
require(dplyr)

musicas.ano <- read.csv("subset_tracks_per_year.csv")
anos <- group_by(musicas.ano, V1)
anos.soma <- summarise(anos, count = n())

ggplot(anos.soma, aes(x = V1, y = count)) + geom_line(colour="blue") + geom_point(colour="blue") +
       xlab("Ano") + ylab("Quantidade de musicas") + ggtitle("Quantidade de musicas por ano")

