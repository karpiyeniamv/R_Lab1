# 13 Мария Карпиеня
# 13 Мария Карпиеня

#task 1

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
x
q = (100/x)  ^ (1/(len-1))
q
v <- c(0:4)
v2 <- c()
geomSeq <- function(start,ratio,begin,end){
  begin=begin-1
  end=end-1
 return (start*ratio**(begin:end))
}
v2 = geomSeq(x, q, 1, 5)
v2


v3 <- sample(c(v1,v2)) 
v3


#task2 
alf <- 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя'
v_alf <-c()
v <- c(1:33)
for (i in v) {
  v_alf[i] = substr (alf,i,i)
}
v_alf
str_sum <- function(s){
  res <- 0
  len <- nchar(s)
  v <- c(1:len)
  for (i in v) {
    res = res + charmatch(substr (s,i,i), v_alf, 0)
  }
  return (res)
}
str_sum ('абвг')

#task3
v11 <- c(v1,v1[1],v1[2],v1[3],v1[4],v1[5])
v3[1]
if (v3[1]>10)
{
   m <- t (matrix(v11, ncol = 13, nrow=13))
}else
{
  m <- matrix(v11, ncol = 13, nrow=13)
}
#month.name
rownames(m) <- c (month.name,"January")
colnames(m) <- c (month.name,"January")
m <- m[-c(2,4,8),]
m <- m[, -c(2,4,8)]
m
det (m)
diag(m)
eigen(m)
v12 <- v1%*%t(v1)
v12
v2 <- v12^2
v2


#task4
v <- c(1,0,12,0,0,8,0,2)
str <- c('nu','m','ni','hao','wo','she','by','losy')
flag <- c (T,F,F,F,F,T,T,F)
we <- c(1,0,2,1,1,2,1,0)
we.f <- factor(we, levels=0:2)
we.f
tab <- data.frame (text = str, usl = flag, num = v, fact = we)
tab
tab [tab$num > tab$fact, 1 ]

#task5 6v

temp <- matrix(sample (c (1,2,3)), ncol = 3, nrow=13)
temp
n <- 13
v <- c(1:13)
res <- 0

# with for
for (i in v)
{
  res = res + (temp[i,1] + temp[i,2]+(temp[i,3])^2) * (temp[n-i+1,3]+temp[n-i+1,2]+ (temp[n-i+1,1])^2) 
}
res

#without for
temp1 <- temp
temp1[, 3] <- temp[, 3]*temp[, 3]
vt1 <-rowSums(temp1)
vt1

temp2 <- temp
temp2[, 1] <- temp[, 1]*temp[, 1]
vt2 <- rowSums(temp2)
vt2<- rev(vt2)
vt2

vt3 <- vt1*vt2

sum(vt3)
