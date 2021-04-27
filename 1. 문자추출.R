library(stringr)
string<-c("±è³²ÁØrm0912±è¼®Áøjin1204¹ÎÀ±±âsuga0309Á¤È£¼®jhope0218¹ÚÁö¹Îjimin1013±èÅÂÇütae1230ÀüÁ¤±¹jk0901")
str_extract_all(string,"[a-z]{3}") #¾ËÆÄºª Áß 3ÀÚ ¿¬¼ÓÇÏ´Â °æ¿ì ÃßÃâ
str_extract_all(string,"[a-z]{2,}") #¾ËÆÄºª Áß 2ÀÚ ÀÌ»ó ¿¬¼ÓÇÏ´Â °æ¿ì ÃßÃâ
str_extract_all(string,"[a-z]{2,5}") #¾ËÆÄºª Áß 2~5ÀÚ ¿¬¼ÓÇÏ´Â °æ¿ì ÃßÃâ
str_extract_all(string,"jk")         #ÇØ´ç ¹®ÀÚ Ã£±â 
str_extract_all(string,"[°¡-ÆR]{3}") #¿¬¼ÓµÈ 3°³ÀÇ ÇÑ±Û ¹®ÀÚ¿­ ÃßÃâ 
str_extract_all(string,"[0-9]{4}")  #¿¬¼ÓµÈ 4°³ÀÇ ¼ýÀÚ ÃßÃâ 