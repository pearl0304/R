library(stringr)
string<-c("김남준rm0912김석진jin1204민윤기suga0309정호석jhope0218박지민jimin1013김태형tae1230전정국jk0901")
str_extract_all(string,"[a-z]{3}") #알파벳 중 3자 연속하는 경우 추출
str_extract_all(string,"[a-z]{2,}") #알파벳 중 2자 이상 연속하는 경우 추출
str_extract_all(string,"[a-z]{2,5}") #알파벳 중 2~5자 연속하는 경우 추출
str_extract_all(string,"jk")         #해당 문자 찾기 
str_extract_all(string,"[가-R]{3}") #연속된 3개의 한글 문자열 추출 
str_extract_all(string,"[0-9]{4}")  #연속된 4개의 숫자 추출 
