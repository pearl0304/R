#qplot(x축~y축, data,facets,geom,stat,position,xlim,ylim,log,main,xlab,ylab,asp)
#고속도로 연비에 대한 분포도 
qplot(hwy,data=mpg,main="고속도로 연비에 대한 분포도")

#연비에 따른 구동방식의 분포도 (drv 변수를 fill 속성에 적용)
qplot(hwy,data=mpg,fill=drv,main="연비에 따른 구동방식 분포도")

#연비에 따른 구동방식의 분포도 (drv 변수를 fill 속성에 적용,막대 너비 설정 )
qplot(hwy,data=mpg,fill=drv,binwidth=2,main="연비에 따른 구동방식 분포도")

#열 단위 패널 생성 (drv 변수를 열 단위로 쪼개기)
qplot(hwy,data=mpg,fill=drv,facets = .~drv,binwidth=2,main="연비에 따른 구동방식 분포도(열 단위)")

#행 단위 패널 생성 (drv 변수를 행 단위로 쪼개기)
qplot(hwy,data=mpg,fill=drv,facets = drv~. ,binwidth=2,main="연비에 따른 구동방식 분포도(행 단위)")


#[변수 두개를 qplot()로 나타내기]
#엔진크기에 따른 고속도로 연비 관계도
qplot(displ,hwy,data=mpg,main="엔진크기에 따른 연비")

#구동 방식에 따른 엔진 크기와 연비의 관계도
qplot(displ,hwy,data=mpg,col=drv,cex=1.5,main="구동 방식에 따른 엔진크기와 연비 관계도")

#열 단위 패널 생성 (drv 변수를 열 단위로 쪼개기)
qplot(displ,hwy,data=mpg,col=drv,facets=.~drv,cex=1.5,main="구동 방식에 따른 엔진크기와 연비 관계도(열단위)")

#행 단위 패널 생성 (drv 변수를 행 단위로 쪼개기)
qplot(displ,hwy,data=mpg,col=drv,facets=drv~.,cex=1.5,main="구동 방식에 따른 엔진크기와 연비 관계도(행단위)")

head(mtcars) # 자동차 모델에 관하 사양이 기록된 데이터프레임
#carb 변수를 색상으로 적용
qplot(wt,mpg,data=mtcars,col=factor(carb),cex=1.5,main = "색상 : carb ")

#qsec 변수를 크기로 적용 
qplot(wt,mpg,data=mtcars,col=factor(carb),size=qsec,main = "크기 : qsec")

#cyl 변수를 모양으로 적용
qplot(wt,mpg,data=mtcars,col=factor(carb),size=qsec,shape=factor(cyl),main = "모양 : cyl")

# cyl 변수를 크기로 작용, carb 변수를 색상으로 적용
qplot(wt,mpg,data=mtcars,col=factor(carb),size=factor(cyl),geom="point",main = "색상 : carb , 크기 : cyl")

#qsec 변수를 크기로 적용,cyl 변수를 모양으로 적용  
qplot(wt,mpg,data=mtcars,col=factor(carb),size=qsec,shape=factor(cyl),geom="point",
      main = "크기 : qsec , 모양 : cyl")

#geom="smooth" 속성으로 산점도 그래프에 평활 그리기 
qplot(wt,mpg,data=mtcars,geom=c("point","smooth"),main = "smooth 적용 ")

# 산점도 그래프의 평활에 cyl 변수의 요인을 색상으로 적용 
qplot(wt,mpg,data=mtcars,geom=c("point","smooth"),color=factor(cyl),main = "smooth 적용, 색상: cyl ")

# geom="line" 속성으로 그래프 그리기 
qplot(wt,mpg,data=mtcars,geom="line",color=factor(cyl),main = "line 적용, 색상: cyl ")

# line과 point 속성을 동시에 나타내기 
qplot(wt,mpg,data=mtcars,geom=c("line","point"),color=factor(cyl),main = "line+point적용, 색상: cyl ")



head(diamonds)
#geom 속성과 fill 속성 사용하기 
qplot(clarity,data = diamonds,main="기본")
qplot(clarity,data = diamonds,fill=cut,main = "fill = cut") #색상을 cut 속성으로 채우기 
qplot(clarity,data = diamonds,fill=cut,geom="bar",main = "fill = cut , geom = bar")
qplot(clarity,data = diamonds,colour=cut,main="colour=cut") #테두리색

