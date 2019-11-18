n <- 6     # no. of vertices
k <- 4     # connectivity
v <- rep(c(0),each=36)
A <- matrix(v, nrow = 6, ncol = 6)
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
A
g1 <- graph.adjacency(adjmatrix=A,mode="undirected")
plot(g1)