#데이터 셋 구조 보기 
dataset<-read.csv("dataset.csv",header = T)
head(dataset)

names(dataset)
attributes(dataset)
str(dataset)

#데이터 셋 조회  : 객체$변수
head(dataset$age)
head(dataset$resident)
length(dataset$age)

#결측치 확인
#summary()함수를 사용하여 결측치 확인 
dataset$price %>% summary()

#결측치 제거 
#sum()함수의 속성을 이용하여 결측치 제거
dataset$price %>%sum(na.rm=T)

#na.omit()함수를 이용하여 결측치 제거
length(dataset$price)
price2<-na.omit(dataset$price)
sum(price2)
length(price2)

#결측치 대체 
#결측치를 0으로 대체하기 
x<-dataset$price
dataset$price[1:30]
dataset$price2=ifelse(!is.na(x),x,0)
dataset$price2[1:30]

#결측치를 평균으로 대체하기 
y<-dataset$price
dataset$price[1:30]
dataset$price3=ifelse(!is.na(y),y,round(mean(y,na.rm=T),2))
dataset$price3[1:30]

#극단치 처리
#범주형 변수 극단치 처리 
table(dataset$gender)
pie(table(dataset$gender))

#subset()함수를 사용하여 데이터 정제하기
#gender 변수 정제 
dataset<-subset(dataset,gender==1|gender==2)
table(dataset$gender)


#연속형 변수의 극단치 처리1
dataset<-read.csv("dataset.csv",header = T)
dataset$price[10:40]

#극단치 보기
summary(dataset$price)


#연속형 변수의 극단치 처리 예2 
#age 변수의 데이터 정제와 시각화
length(dataset$age)
summary(dataset$age)

dataset2<-subset(dataset,age>=20&age<=69)
length(dataset2$age)
summary(dataset2$age)

#age 변수의 box 플로팅으로 평균 연령 분석
boxplot(dataset2$age)


#극단치를 찾기 어려운 경우 : boxplot 그래프 활용하기
#boxplot으로 price의 극단치 시각화
boxplot(dataset$price)

#극단치 통계 확인
boxplot(dataset$price)$stats

#극단치를 제거한 서브 셋 만들기 
dataset_sub<-subset(dataset,price>=2.1&price<=7.9)
boxplot(dataset_sub$price)





#price 변수의 데이터 정제와 시각화
dataset2<-subset(dataset,price>=2&price<=8)
length(dataset2$price)
summary(dataset2$price)
plot(dataset2$price)














