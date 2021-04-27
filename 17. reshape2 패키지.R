#dacast(데이터 셋, 앞변수~ 뒷변수, 적용함수) 
install.packages("reshape2")
library(reshape2)

data<-read.csv('data.csv')
head(data)

#넓은 형식으로 변경하기
wide<-dcast(data,Customer_ID~Date,sum)
wide

write.csv(wide,"wide.csv",row.names = F)
wide<-read.csv("wide.csv")
colnames(wide)<-c("Customer_ID","day1","day2","day3","day4","day5","day6","day7")
wide

#melt(데이터 셋 , id="칼럼명")
long<-melt(wide,id="Customer_ID")
long

#long 칼럼명 수정하기 
name<-c("Customer_ID","Date","Buy")
colnames(long)<-name
head(long)

#acacst(데이터 셋, 앞변수~뒷변수)

#데이터셋 불러오기 
data("airquality")
str(airquality) #구조 확인 

#칼럼 제목을 대문자로 일괄 변경하기
names(airquality)<-toupper(names(airquality))
head(airquality)

#melt()함수를 이용하여 넓은 형식을 월.일을 기준으로 긴 형식으로 변경하기
air_melt<-melt(airquality,id=c("MONTH","DAY"),na.rm=T)
head(air_melt)

#acast()함수를 이용하여 3차원으로 구조 변경
names(air_melt)<-tolower(names(air_melt))
acast(air_melt,day~month~variable)







