name<-c("김남준","김석진","민윤기","정호석","박지민","김태형","전정국")
age<-c(28,30,29,28,27,27,25)
job<-c("가수","가수","가수","가수","가수","가수","가수")
position<-c("랩","보컬","랩","랩","보컬","보컬","보컬")
sat<-c(1,2,3,4,5,6,7)
grade<-c("A","B","C","D","E","F","G")
total<-c(12.3,23.4,34.5,45.6,56.7,67.8,78.9)

user<-data.frame(name,age,job,position,sat,grade,total);user

user2<-user[c(T,F), ];user2
user3<-user[c(F,T), ];user3


# 데이터프레임 user에서 홀수행만 선택해서 user2에 넣으시오
user2<-user[c(T,F), ];user2

#데이터프레임 user에서 짝수행만 선택해서 user3에 넣으시오
user3<-user[c(F,T), ];user3