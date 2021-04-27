#histogram(~x축 |조건 ,data)
library(lattice)
install.packages("mlmRev")
library(mlmRev)
data("Chem97")
str(Chem97)
head(Chem97)


#히스토그램 그리기 -GCSE 개인 평균 성적을 x 축으로 
histogram(~gcsescore,data=Chem97)

#gcescore 변수를 대상으로 score 변수를 조건으로 지정하여 히스토그램 그리기 
histogram(~gcsescore|score,data = Chem97,col="skyblue")
histogram(~gcsescore|factor(score),data = Chem97,col="skyblue")

#densityplot(~축 | 조건 , data, groups=변수)
#밀도 그래프 그리기 
densityplot(~gcsescore|factor(score),data=Chem97,groups=gender,col="pink",plot.poitn=T,auto.key = T)

#barchart(y축~x축|조건 , data, layout)
#막대 그리프 그리기 
data("VADeaths")
VADeaths
str(VADeaths)
class(VADeaths)
mode(VADeaths)

#VADesths 자료는 matrix 자료라서 table자료로 변환해야함
df<-as.data.frame.table(VADeaths)
str(df)
df

#막대차트 그리기 
names(df)<-c("Age","Gender","Freq")
df
barchart(Age~Freq|Gender,data=df,layout=c(4,1),col="steelblue1")

#origin 속성이용 
barchart(Age~Freq|Gender,data=df,layout=c(4,1),col="violetred1",origin=0)


#dotplot(y축 ~x축 |조건, data, layout)
#점 그래프 그리기 
dotplot(Age~Freq|Gender,data=df,col="skyblue4")
dotplot(Age~Freq|Gender,data=df,col="seashell3",layout=c(4,1))

# 점그래프에 선 그리기 
dotplot(Age~Freq,data=df,groups=Gender,type='o',auto.key=list(space="right",poins=T,lines=T),cex=1.5)
dotplot(Age~Freq,data=df,groups=Gender,type='l',auto.key=list(space="right",poins=T,lines=T))
dotplot(Age~Freq,data=df,groups=Gender,type='h',auto.key=list(space="right",poins=T,lines=T))
dotplot(Age~Freq,data=df,groups=Gender,type='s',auto.key=list(space="right",poins=T,lines=T))


#xyplot(y축 ~x축 | 조건변수 , data=dataframe or list , layout )
#산점도 그래프 그리기 
library(lattice)
library(datasets)
str(airquality)

#Ozone과 Wind를 변수로 산점도 그리기
xyplot(Ozone~Wind, data=airquality,main="Wind에 따른 Ozone 수치")

#월별 바람에 따른 오존 수치 (조건변수 : Month)
xyplot(Ozone~Wind|factor(Month),data=airquality,col="chocolate1",main="월별 Wind에 따른 Ozone 수치 ")

#월별 바람에 따른 오존 수치 (조건변수 : Month) + layout 설정 
xyplot(Ozone~Wind|factor(Month),data=airquality,layout=c(5,1),col="blueviolet",main="월별 Wind에 따른 Ozone 수치 ")

#quaeks 데이터로 산점도 그래프 그리기 
head(quakes)
str(quakes)

#lat(위도)와 long(경도)에 따른 진앙지 분포도
xyplot(lat~long,data=quakes,pch=",",col="cadetblue3",main="1964년 이후 태평양 진앙지")

#수심별로 진앙지 파악하기 - depth 범위 설정 
quakes$depth2[quakes$depth>=40 & quakes$depth<=150]<-"1.(40~150)"
quakes$depth2[quakes$depth>=151 & quakes$depth<=250]<-"2.(151~250)"
quakes$depth2[quakes$depth>=251 & quakes$depth<=350]<-"3.(251~350)"
quakes$depth2[quakes$depth>=351 & quakes$depth<=450]<-"4.(351~350)"
quakes$depth2[quakes$depth>=451 & quakes$depth<=550]<-"5.(451~450)"
quakes$depth2[quakes$depth>=551 & quakes$depth<=680]<-"6.(551~680)"

convert<-transform(quakes,depth2=factor(depth2))
xyplot(lat~long|depth2,data=convert, col="khaki4",main="수심에 따른 진앙지 분포")


# airqaulity 자료를 이용하여 월별 Wind에 따른 Ozone+Solar.R 수치 산점도 그리기 
xyplot(Ozone+Solar.R~Wind |factor(Month),data=airquality,col=c("tomato4","lightseagreen"),main="월별 Wind에 따른 Ozone+Solar.R 수치")
xyplot(Ozone+Solar.R~Wind |factor(Month),data=airquality,col=c("lightpink4","blue"),main="월별 Wind에 따른 Ozone+Solar.R 수치",layout=c(5,1))


#데이터 범주화 - equal.count(data,number=n , overlap=n)
#quakes 데이터 이용하여 지진의 깊이를 겹치는 영역 없이 5개로 범주화 
depthGroup<-equal.count(quakes$depth,number=5,overlap=0)
depthGroup

#코딩 
quakes$depth3[depthGroup>=39.5 & depthGroup<=80.5]<-"1.(39.5 ~ 80.5)"
quakes$depth3[depthGroup>=79.5 & depthGroup<=186.5]<-"2.(79.5 ~ 186.5 )"
quakes$depth3[depthGroup>=185.5  & depthGroup<=397.5]<-"3.(185.5 ~ 397.5 )"
quakes$depth3[depthGroup>=396.5 & depthGroup<=562.5]<-"4.(396.5 ~ 562.5 )"
quakes$depth3[depthGroup>=562.5 & depthGroup<=680.5 ]<-"5.(562.5 ~ 680.5 )"

#산점도 그리기 
xyplot(lat~long|quakes$depth3,data=quakes,col="red2",main="수심에 따른 진앙지 분포")

#리히터 규모를 2개의 영역으로 범주화하여 산점도 그리기 
mag1<-equal.count(quakes$mag,number=2,overlap=0)
mag1
xyplot(lat~long|mag1,data=quakes,col="rosybrown",main="리히터 규모에 따른 진앙지")


#조건 그래프 - coplot(y축~x축|조건 , data)
#depth 조건에 의해 위도와 경도 조건 그래프 그리기 
coplot(lat~long|depth,data=quakes,col="paleturquoise2")

#조건의 구간 막대가 0,1 단위로 겹치게 그래프 그리기 
coplot(lat~long|depth,data=quakes,overlap=0.1,col="paleturquoise3")

#조건 구간을 5개로 지정하고 1행5열로 그래프 그리기 
coplot(lat~long|depth,data=quakes,number = 5,row=1,col="paleturquoise4")

#패널 영역에 부드러운 곡선 추가 
coplot(lat~long|depth,data=quakes,number = 5,row=1,panel=panel.smooth,col="royalblue3")

#조건 막대에 색상 적용
coplot(lat~long|depth,data=quakes,number = 5,row=1,col="royalblue4",bar.bg=c(num="mistyrose"))


#3차원 산점도 그래프 cloud(z축 변수~y축 변수*x축 변수, data)
#3차원 산점도 그래프 
cloud(depth~lat*long,data=quakes,zlim = rev(range(quakes$depth)),xlab = "경도",ylab = "위도",zlab="깊이",col=c("orange1", "paleturquoise1" , "palegreen"))

#테두리와 회전 속성 추가 
cloud(depth~lat*long,data=quakes,zlim = rev(range(quakes$depth)),xlab = "경도",ylab = "위도",zlab="깊이",
      col=c("orange1", "paleturquoise1" , "palegreen"),
      panel.aspect=0.9,screen=list(z=45,x=-25))





