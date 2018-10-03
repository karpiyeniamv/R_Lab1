# 13 Мария Карпиеня

len <- nchar('Карпиеня')
num <- 13

#арифметическая
d <- (6.5-num)/(len-1)
v <- c(0:7)
v1 <- c()
for (i in v) {
  v1[i+1] = num + d*i
}
v1

# геометрическая
len <- nchar('Мария')
x <- (13 - num)+2
q = (100/x)  ^ (1/(len-1))
q

v <- c(0:4)
v2 <- c()
for (i in v) {
  v2[i+1] = x * (d ** i)
}
v2