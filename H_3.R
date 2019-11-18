n <- 7     # no. of vertices
k <- 5     # connectivity
v <- rep(c(0),each=49)
A <- matrix(v, nrow = 7, ncol = 7)
A
r <- k/2
x <- 1
i <- 0
j <- 0
for(x in 1:r)
{
  for(i in 1:n)
  {
    for(j in 1:n)
    {
      if(min(abs((i-j)),abs(n-(i-j)))==x)
      {
        A[i,j] <- 1
        A[j,i] <- 1
      }
    }
  }
}
#g1 <- graph.adjacency(adjmatrix=A,mode="undirected")
#plot.igraph(g1,edge.color="Red")
#Quasi diameter
B <- matrix(v, nrow = 7, ncol = 7)
x <- 1
j <- (n+1)/2
B[x,j] <- 1
B[j,x] <- 1
j <- (n+3)/2
B[x,j] <- 1
B[j,x] <- 1
#g1 <- graph.adjacency(adjmatrix=B,mode="undirected")
#plot.igraph(g1,edge.color="Yellow")

k1 <- ((n-1)/2)
for(i in 2:k1)
{
  j <- i+((n+1)/2)
  A[i,j] <- 1
  A[j,i] <- 1
}
A
g1 <- graph.adjacency(adjmatrix=A,mode="undirected")
plot.igraph(g1,edge.color="Green")