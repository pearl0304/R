#[범주형 vs 범주형] 
new_data<-read.csv("new_data.csv",header = T)
str(new_data)

#코딩 변경된 resident 칼럼과 gender 칼럼을 대상으로 빈도수 구하기
resident_gender<-table(new_data$resident2,new_data$gender2)
resident_gender

gender_resident<-table(new_data$gender2,new_data$resident2)
gender_resident

#gender에 따른 resident의 분포현황 시각화 
barplot(resident_gender,beside = T,horiz = T,col=rainbow(5),legend=row.names(resident_gender),main = "성별에 따른 거주지역 분포 현황" )
barplot(resident_gender,beside = F,horiz = T,col=rainbow(5),legend=row.names(resident_gender),main = "성별에 따른 거주지역 분포 현황" )
#resident에 따른 gender 분포현황 시각화
barplot(gender_resident,beside = T,horiz = T,col=rep(c(2,4),5),legend=c("남자","여자"),main = "거주지에 따른 성멸  분포 현황" )
barplot(gender_resident,beside = F,horiz = T,col=rep(c(2,4),5),legend=c("남자","여자"),main = "거주지에 따른 성멸  분포 현황" )

#[연속형 vs 범주형]
install.packages("lattice")
library(lattice)

#직업 유형에 따른 나이 분포현황
str(new_data)
densityplot(~age,data=new_data,groups=job2,plot.point=T,auto.key=T)
#plot.point => 밀도 / auto.key=> 범례

#[연속형 vs 범주형 vs 범주형]-구매비용,성별,직급을 대상으로 시각화 하기
#성별에 따른 직급별 구매비용 분석 (범주vs범주)
densityplot(~price|factor(gender2),data=new_data,groups = position2,plot.point=T,auto.key = T)

#직급에 따른 성별 구매비용 분석
densityplot(~price|factor(position2),data=new_data,groups = gender2,plot.poitn=T, auto.key=T)

#연속형(2개) vs 범주형(1개)
#나이와 성별에 따른 구매비용 분석 
xyplot(price~age|factor(gender2),data=new_data)
