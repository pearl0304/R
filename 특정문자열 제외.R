library(stringr)
string<-c("김남준rm0912김석진jin1204민윤기suga0309정호석jhope0218박지민jimin1013김태형tae1230전정국jk0901")
str_extract_all(string,"[^a-z]") #영문자를 제외한 나머지 추출
str_extract_all(string,"[^a-z]{4}") #영문자를 제외한 나머지 4글자 추출
str_extract_all(string,"[^가-R]{6}") #한글 문자를 제외한 나머지 6글자 추출
str_extract_all(string,"[^0-9]{5,}") #숫자를 제외한 5이상 글자 추출 
