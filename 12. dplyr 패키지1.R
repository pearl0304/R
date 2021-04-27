#조건에 맞는 데이터 필터링 
install.packages("dplyr")
install.packages("hflights")
library(dplyr)
library(hflights)
class((hflights))

#hflights_df 데이터를 년,월,출발시간,도착시간 기준으로 오름차순 정렬
hflight_df %>% arrange(Year,Month,DepTime, ArrTime)

#hflight_df 데이터를 년,월, 출발시간, 도착시간 칼럼만 보기 
names(hflight_df) #hflight의 총 칼럼 확인
hflight_df %>% select(Year,Month,DepTime, ArrTime)

#hflight_df 데이터를 칼럼순서대로Year~ArrTime까지 검색 
hflight_df %>% select(Year:ArrTime)

#hflight_df에서 비행시간의 평균 구하기 
hflight_df %>% summarise(avgAirTime=mean(AirTime,na.rm=T))

#hflight_df의 관측치 길이 구하기
hflight_df %>% summarise(cnt=n(),delay=mean(ArrDelay,na.rm=T))

#hflight_df에서 도착시간의 표준편차와 분산 구하기 
hflight_df %>% summarise(arrTimeSd=sd(ArrTime,na.rm=T),arrTimeVar=var(ArrTime,na.rm=T))


