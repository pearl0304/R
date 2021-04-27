#ggplot()
ggplot(diamonds,aes(carat,price,color=cut))
p<-ggplot(diamonds,aes(carat,price,color=cut))
p+geom_point()



p<-ggplot(mtcars,aes(mpg,wt,color=factor(cyl)))
p+geom_point()
p+geom_line()

p<-ggplot(diamonds,aes(price)) #다이어몬드의 가격을 변수로 지정 
p+stat_bin(aes(fill=cut),geom = "bar")#색상은 cut으로, 그래프 모양은 막대모양으로 적용

p+stat_bin(aes(fill=..density..),geom="bar")

p+stat_bin(aes(fill=cut),geom="area")

p+stat_bin(aes(color=cut,size=..density..),geom="point")


#산점도에 회귀선 적용하기 
library(UsingR)
data("galton")
p<-ggplot(data=galton,aes(x=parent,y=child))
p+geom_count()+geom_smooth(method = "lm")


#테마 적용
#제목 설정 (ggtitle)
p<-ggplot(diamonds,aes(carat,price,color=cut))
p+geom_point()+ggtitle("다이아몬드 무게와 가격의 상관관계")

#theme() 함수를이용하여 그래프의 외형 속성 설정 
p + theme(
  title = element_text(color = "blue", size = 25), 
  axis.title = element_text(size = 14, face ="bold"),
  axis.title.x = element_text(color = "green"),
  axis.title.y = element_text(color = "green"),
  axis.text = element_text(size = 14),
  axis.text.y = element_text(color = "red"),
  axis.text.x = element_text(color = "purple"),
  legend.title = element_text(size = 20,
                              face = "bold",
                              color = "red"),
  legend.position = "bottom",
  legend.direction = "horizontal"
)
