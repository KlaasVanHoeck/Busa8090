# use the libraries of Q2.B


# creating the network graph
role <- Bali %v% "role"
ggraph(Bali,layout ="focus", focus=3) +
geom_node_text(aes(label = role),repel = TRUE, color="blue") + 
theme_graph()+ 
geom_edge_link0(edge_colour = "grey66",edge_width = 0.3)+ 
geom_node_point(color="black")
