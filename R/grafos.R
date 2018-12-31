install.packages("igraph")
library(igraph)
#grafos direcionados
grafo1 = graph(edges=c(1,2,2,3,3,4,4,1))
plot(grafo1)
class(grafo1)
grafo1
grafo2 = graph(edges=c(1,2,2,3,3,4,4,1,1,4,4,3,3,2,2,1))
plot(grafo2)
grafo3 = graph(edges=c(1,2,2,3,3,4,4,1,1,1))
plot(grafo3)
grafo4 = graph_from_literal(1-+2,2-+3,3++4,4-+1)
plot(grafo4)
#grafo não direcionado
grafo5 = graph_from_literal(1-2,2-3,3-4,4-1)
plot(grafo5)
grafo6 = graph(edges=c(1,2,,3,3,4,4,1), directed=F)
plot(grafo6)
#elementos isolados
grafo7 = graph(edges=c(1,2,2,3,3,4,4,1), directed=F, n=10)
plot(grafo7)
#grafos nomeados
grafo8 = graph(edges=c("A","B","B","C","C","D","D","E","E","A","A","C","C","B"), isolates=c("F","G"))
plot(grafo8)
#matriz de IGRAPH
grafo8[]
grafo8[1,]
#nome dos vértices 
V(grafo8)$name
grafo9 = graph(edges=c("Fernando","Pedro","José","Antônio","Fernando","José","Fernando","Antônio"))
plot(grafo9)
#propriedades (atributos) do vértice
V(grafo9)$Peso = c(40,30,30,25)
#mostra atributos
vertex_attr(grafo9)
#propriedades da aresta
E(grafo9)$TipoAmizade = c("Amigo","Inimigo","Inimigo","Amigo")
edge_attr(grafo9)
#grafo ponderado
E(grafo9)$weight = c(1,2,1,3)
grafo9
#tipo dos vértices
V(grafo9)$type = "Humanos"
grafo9

#impressão de grafos
#vértices
plot(grafo9, vertex.size=vertex_attr(grafo9)$Peso)
edge_attr(grafo9)$weight
#arestas
plot(grafo9, vertex.size=vertex_attr(grafo9)$Peso, edge.width=edge_attr(grafo9)$weight)
#cor
vertex_attr(grafo9)$Cor = c("Blue","Red","Yellow","Green")
plot(grafo9, vertex.size=vertex_attr(grafo9)$Peso, edge.width=edge_attr(grafo9)$weight, vertex.color=vertex_attr(grafo9)$Cor)
#curvatura
plot(grafo9, vertex.size=vertex_attr(grafo9)$Peso, edge.width=edge_attr(grafo9)$weight, vertex.color=vertex_attr(grafo9)$Cor, edge.curved=0.4)
plot(grafo9, vertex.size=vertex_attr(grafo9)$Peso, edge.width=edge_attr(grafo9)$weight, vertex.color=vertex_attr(grafo9)$Cor, edge.curved=0.4, frame=T, main="Grafo", vertex.shape="square")

#grafos interativos
tkplot(grafo9)

#métricas
grafo10 = read_graph(file.choose(), format=c("graphml"))
plot(grafo10)
#grau
degree(grafo10, mode="in")
degree(grafo10, mode="out")
degree(grafo10, mode="all")

grau = degree(grafo10, mode="in")
plot(grafo10, vertex.size=grau)

#diametro
diameter(grafo10, directed=T)
diameter(grafo10, directed=F)
get_diameter(grafo10, directed=T)

#vizinhança
neighborhood(grafo10, 0, mode=c("all"))

#isomorfismo = 
grafo11 = grafo10
isomorphic(grafo10, grafo11)

#caminhos e distâncias
dist = graph(edges=c("A","C","A","B","B","E","B","F","C","D","G","H","D","H","E","H","F","G"), directed=T)
plot(dist)
#atribuindo pesos
E(dist)$weight = c(2,1,2,1,2,1,1,3,1)
plot(dist, edge.label=E(dist)$weight)
#menor distância entre vértices do grafo
distances(dist, V(dist)$name=="A", V(dist)$name=="H")
plot(dist, edge.label=E(dist)$weight)
#mostrar caminho
caminho = shortest_paths(dist, V(dist)$name=="A", V(dist)$name=="H", output=c("both"))
caminho$vpath
plot(dist, edge.label=E(dist)$weight)

#impressão do caminho mais curto
for(i in 1:length(V(dist))){
  V(dist)$color[i] <- ifelse(i %in% as.vector(unlist(caminho$vpath)), "green", "gray")
}

for(i in 1:length(E(dist))){
  V(dist)$color[i] <- ifelse(i %in% as.vector(unlist(caminho$vpath)), "green", "gray")
}

plot(dist, edge.label=E(dist)$weight)

#comunidades e cliques
comu = cluster_edge_betweenness(dist)
comu
comu$membership
plot(dist, vertex.color=comu$membership)

cli = cliques(as.undirected(grafo10), min=4)
length(cli)
cli

#grafos clássicos
install.packages("igraphdata")
library(igraphdata)

data(Koenigsberg)
plot(Koenigsberg)
degree(Koenigsberg, mode="all")

data(kite)
plot(kite)

data(UKfaculty)
plot(UKfaculty)
comun = cluster_edge_betweenness(UKfaculty)
plot(comun, UKfaculty)
