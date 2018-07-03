#Hutt Yannis 11408376

#exo 2
#p[x<=5]
result<-ppois(5,2) 
#0.983

#p[x=3]
result<-dpois(3,2)
#0.180447

#exo 3
x<-rep(1:10)
for ( i in  1:10){
  x[i] <- dbinom(i,10,0.3, log=FALSE)
}

#exo 4
vect<-rbinom(1000,10,0.3)
barplot(vect)

#x<-rep(1:1000)
#for ( i in  1:1000){
#  x[i] <- dbinom(i,1000,0.3)
#}
#barplot(table(x))


#exo 5
#p[y>=5]
pnorm(5,-3,2,lower.tail=TRUE,log.p = FALSE)
#0.999
#P[-4<=Y<=0]
pnorm(0,-3,2) - pnorm(-4,-3,2)
#0.6246553

#exo 6
n<-1000
result<-rep[1:n]
for(i in 1:n){
  result[i]<-runif(1)+runif(1)+runif(1)+runif(1)+runif(1)
}
plot(result,type='h')

#exo 7
a<-c(4.7,4.3,4.5,4.9,4.2,4.7,4.0,4.2,5.0,3.9,4.6,4.6,4.8,4.4,4.2,4.6,4.3,4.9,4.0,4.5,4.1,4.4,4.3,4.3)
mean(a)
var(a)
t.test(a,conf.level = 0.90)

t.test(a,conf.level = 0.95)

t.test(a,conf.level = 0.98)
#non la moyenne de l'usinde est de 4.43 est pas de 4.25

#exo 8

maths<-rep(1:2)
info<-rep(1:2)
maths[1]<-30
maths[2]<-68
info[1]<-17
info[2]<-88
final<-rbind(maths,info)
chisq.test(final)
#hypothése rejetter car p-value est inférieure a 0.5 