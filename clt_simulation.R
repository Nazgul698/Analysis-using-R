#Visualize population parameter
hist(ss$happy)
mean(ss$happy)
sd(ss$happy)
fivenum(ss$happy)

#simulation1
mean_vector1 <- rep(NA,1000)
for(i in 1:1000)
{x<-sample(ss$happy,size=5)
mean_vector1[i]<-mean(x)}
hist(mean_vector1,xlim=c(2,10))
mean(mean_vector1)
sd(mean_vector1)
sd(ss$happy)/sqrt(5)

#simulation 2
mean_vector2 <- rep(NA,1000)
for(i in 1:1000)
{x<-sample(ss$happy,size=15)
mean_vector2[i]<-mean(x)}
hist(mean_vector2,xlim=c(2,10))
mean(mean_vector2)
sd(mean_vector2)
sd(ss$happy)/sqrt(15)

#simluation 3
mean_vector3 <- rep(NA,1000)
for(i in 1:1000)
{x<-sample(ss$happy,size=25)
mean_vector3[i]<-mean(x)}
hist(mean_vector3,xlim=c(2,10))
mean(mean_vector3)
sd(mean_vector3)
sd(ss$happy)/sqrt(25)
