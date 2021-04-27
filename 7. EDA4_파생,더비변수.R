#더미형식으로 파생변수 생성
user_data<-read.csv("user_data.csv",header = T)
head(user_data)
table(user_data$house_type)

#더미 변수 생성
house_type2<-ifelse(user_data$house_type==1|user_data$house_type==2,0,1)
table(house_type2)

#파생변수 추가 
user_data$house_type2<-house_type2
head(user_data)

#관계로 파생변수 생성 
#고객별 상품 유형에 따른 구매금액과 합계를 나타내는 파생변수 생성 
library(reshape2)
produt_price<-dcast(pay_data,user_id~product_type,sum,na.rm=T)
head(produt_price)

#칼럼명 수정
names(produt_price)<-c('user_id',"식료품(1)","생필품(2)","의류(3)","잡화(4)","기타(5)")
head(produt_price)

#고객별 지불 유형에 따르구매 상품 개수를 나타내는 파생변수 생성 
pay_price<-dcast(pay_data,user_id~pay_method,length)
head(pay_price)
names(pay_price)<-c('user_id',"현금(1)","직불카드(2)","신용카드(3)","상품권(4)")
head(pay_price)

#파생변수 합치기
#파생변수 합치기 

#고객정보 테이블과 고객별 상품 유형에 따르구매금액 합계 병합하기
library(plyr)
user_pay_data<-join(user_data,produt_price,by="user_id")
head(user_pay_data)

#고객별 지불 유형에 따르 구매 상품 개수 병합
user_pay_data<-join(user_pay_data,pay_price,by="user_id")
head(user_pay_data)



     
  