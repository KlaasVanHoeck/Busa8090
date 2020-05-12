# installation of packages
install.packages("devtools")
devtools::install_github("DougLuke/UserNetR")
install.packages("statnet")
install.packages(c("igraph", "graphlayouts", "ggraph", "ggplot2"))

# loading of necessary libraries
library(igraph)
library(ggraph)
library(graphlayouts)
library(UserNetR)
library(statnet)

# loading the data
data("Bali")
force(Bali)

# creating the network graph
Names <- Bali %v% "vertex.names"
ggraph(Bali,layout ="focus", focus=3) +
geom_node_text(aes(label = Names),repel = TRUE, color="blue") + 
theme_graph()+ 
geom_edge_link0(edge_colour = "grey66",edge_width = 0.3)+ 
geom_node_point(color="black")
