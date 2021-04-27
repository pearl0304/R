#이산변수 시각화  - barplot() 
#막대차트
chart_data<-c(305,450,320,460,330,480,380,520)
names(chart_data)<-c("2019 1분기","2020 1분기","2019 2분기","2020 2분기","2019 3분기","2020 3분기","2019 4분기","2020 4분기")
str(chart_data)
chart_data

#세로 막대차트 그리기 
barplot(chart_data,xlab="년도별 분기 현황",ylab="매출액(단위:만원)",ylim=c(0,600),col=rainbow(8),main="2019년 vs 2020년 매출현황")

#가로 막대차트 그리기
barplot(chart_data,xlab="년도별 분기 현황",ylab="매출액(단위:만원)",xlim=c(0,600),horiz=T,col=rainbow(8),main="2019년 vs 2020년 매출현황")

#개별 차트 그리기 
data("VADeaths")
par(mfrow=c(1,1))
barplot(VADeaths,beside = T,col=rainbow(5),main = "미국 버지니아주 하위계층 사망비율")
legend(19,71,c("50-54","55-59","60-64","65-69","70-74"),cex=0.8,fill=rainbow(5))

#누적 차트 그리기 
barplot(VADeaths,beside = F,col=rainbow(5))
title(main="미국 버지니아주 하위계층 사망비율",font.main=4)
legend(3.8,200,c("50-54","55-59","60-64","65-69","70-74"),cex=0.8,fill=rainbow(5))


#이산변수 시각화 - dotchart()
#점차트
dotchart(chart_data,col=c("black","red"),lcolor = "orange",pch=1:2,xlab = "매출액",main=
           "분기별 판매현황 : 점차트",cex=1.2)


#이산변수 시각화 - pie() 
# 원형차트
pie(chart_data,labels = names(chart_data),col=rainbow(8),cex=1.2)
title("2019년~2020년 분기별 매출현황")



