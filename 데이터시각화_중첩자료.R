library(UsingR)
data(galton)

#child와 parent 칼럼을 대상으로 교차 테이블을 작성하고 결과를 데이터프레임으로 생성하여 중복 수 칼럼 생성 

#1. 교차테이블 작성, 데이터 프레임으로 변환 
galtonData<-as.data.frame(table(galton$child,galton$parent))
head(galtonData)

#2. 칼럼 단위 추출
names(galtonData)<-c("child","parent","freq")
head(galtonData)

#데이터 프레임을 산점도로 시각화 하기 위해서는 df에서 parent 칼럼과 child 칼럼을 연산이 가능한 숫자형으로 변환 
parent<-as.numeric(galtonData$parent)
child<-as.numeric(galtonData$child)

#3. 점의 크기 확대 
plot(parent,child,pch=21,col="pink",bg="skyblue",cex=0.2*galtonData$freq,xlab = "parent",ylab="child")
