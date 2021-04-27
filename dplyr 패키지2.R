#group_by(dataframe, 집단변수)
#iris 데이터를 이용하여 꽃의 종료별로 그룹화하기 
library(dplyr)
head(iris)
species<-iris %>% group_by(Species)
species


#join(df1,df2,by="결합할 칼럼")
#<데이터 프레임 생성>
A_coffee<-c("아메리카노","카푸치노","카페라떼","마끼아또","고구마라떼")
A_num<-c(1,2,3,4,5)
CoffeeA<-data.frame(종류=A_coffee, 수량=A_num)
CoffeeA

B_coffee<-c("아메리카노","바닐라라떼","스무디","녹차라떼","레몬에이드")
B_num<-c(3,4,5,6,7)
CoffeeB<-data.frame(종류=B_coffee, 수량=B_num)
CoffeeB

#inner_join()
inner_join(CoffeeA,CoffeeB,by='종류') #공통된 종류가 있는 행만 결합 -아메리카노 
inner_join(CoffeeA,CoffeeB,by='수량') #공통된 수량이 있는 행만 결합 -3,4,5

#left_join()
left_join(CoffeeA,CoffeeB,by='종류') #커피A의 종류를 기준으로 합함. B프레임에 A와 일치하는 종류가 없을 경우 NA 
left_join(CoffeeA,CoffeeB,by='수량') #커피A의 수량을 기준으로 합함. B프레임에 A와 일치하는 수량이 없을 경우 NA

#rihgt_join()
right_join(CoffeeA,CoffeeB,by='종류') #커피B의 종류를 기준으로 합함. A프레임에 B와 일치하는 종류가 없을 경우 NA 
right_join(CoffeeA,CoffeeB,by='수량') #커피B의 수량을 기준으로 합함. A프레임에 B와 일치하는 수량이 없을 경우 NA

#full_jonin()
full_join(CoffeeA,CoffeeB,by="종류") #'종류'라는 칼럼이 있으면 싹다 결합
full_join(CoffeeA,CoffeeB,by="수량") #'수량'이라는 칼럼이 있으면 싹다 결합


#bind(df,df2)
#<데이터 프레임 생성>
A_coffee<-c("아메리카노","카푸치노","카페라떼","마끼아또","고구마라떼")
A_num<-c(1,2,3,4,5)
CoffeeA<-data.frame(종류=A_coffee, 수량=A_num)
CoffeeA

B_coffee<-c("아메리카노","바닐라라떼","스무디","녹차라떼","레몬에이드")
B_num<-c(3,4,5,6,7)
CoffeeB<-data.frame(종류=B_coffee, 수량=B_num)
CoffeeB

df_rows<-bind_rows(CoffeeA,CoffeeB)
df_rows

df_cols<-bind_cols(CoffeeA,CoffeeB)
df_cols

#rename(dataframe, 변경후칼럼명 = 변경전 칼럼명) 
df_cols %>% rename(종류=종류...1)






