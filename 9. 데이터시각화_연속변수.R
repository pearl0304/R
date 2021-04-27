#연속변수 시각화 -boxplot
# notch=F 인 boxplot
boxplot(VADeaths,range=0)

# notch=T 인 boxplot
boxplot(VADeaths,range=0,notch=T)
abline(h=37,lty=3,col="red")


#연속변수 시각화 - hist()
#hist - 아이리스 꽃받침 길이
data("iris")
names(iris)
summary(iris$Sepal.Length)

#hist - 아이리스 꽃받침 너비
data("iris")
names(iris)
summary(iris$Sepal.Width)
hist(iris$Sepal.Width,xlab = "Sepal.Width",col = "blue",main="iris 꽃받침 너비",xlim=c(2.0,4.5))

#hist - 아이리스 꽃받침 너비 밀도 그래프
hist(iris$Sepal.Width,xlab = "Sepal.width",col = "pink",main="iris 꽃받침 너비 확률 밀도",xlim=c(2.0,4.5),freq=F)
lines(density(iris$Sepal.Width),col="blue")

#정규 분포 추정 곡선 
x<-seq(2.0,4.5,0.1)
curve(dnorm(x,mean=mean(iris$Sepal.Width),sd=sd(iris$Sepal.Width)),col="red",add=T)

#연속변수 시각화 -scatter plot()
#기본 산점도 시각화 
price<-runif(10,min=1,max=100)
plot(price,col="red",cex=1.5)  

#대각선 추가
par(new=T)
line_chart=1:100
plot(line_chart,type ="l",col="green",axes=F,ann=F)

hist(iris$Sepal.Length,xlab = "Sepal.Length",col = "orange",main="iris 꽃받침 길이",xlim=c(4.3,7.9))

# plot() 선 종류
par(mfrow=c(2,2))
plot(price,type = "l",main = "l 실선")
plot(price,type = "o",main = "o 원형 실선")
plot(price,type = "h",main = "h 직선")
plot(price,type = "s",main = "s 꺽은선")

#pch 속성으로 산점도 그리기 
plot(price,type = "o",pch=5,main = "빈 사각형")
plot(price,type = "o",pch=15,main = "채워진 사각형")
plot(price,type = "o",pch=20,col="blue",main = "파란색 선 채워진원형")
plot(price,type = "o",pch=20,col="orange",cex=1.5,main = "주황색 선 1.5크기 원형")

#lwd 속성 추가 
plot(price,type = "o",pch=20,col="green",cex=2.0,lwd=3,main = "너비 3 녹색선+ 2.0크기 원형")