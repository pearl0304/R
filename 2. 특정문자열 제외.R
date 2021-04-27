library(stringr)
string<-c("±è³²ÁØrm0912±è¼®Áøjin1204¹ÎÀ±±âsuga0309Á¤È£¼®jhope0218¹ÚÁö¹Îjimin1013±èÅÂÇütae1230ÀüÁ¤±¹jk0901")
str_extract_all(string,"[^a-z]") #¿µ¹®ÀÚ¸¦ Á¦¿ÜÇÑ ³ª¸ÓÁö ÃßÃâ
str_extract_all(string,"[^a-z]{4}") #¿µ¹®ÀÚ¸¦ Á¦¿ÜÇÑ ³ª¸ÓÁö 4±ÛÀÚ ÃßÃâ
str_extract_all(string,"[^°¡-ÆR]{6}") #ÇÑ±Û ¹®ÀÚ¸¦ Á¦¿ÜÇÑ ³ª¸ÓÁö 6±ÛÀÚ ÃßÃâ
str_extract_all(string,"[^0-9]{5,}") #¼ýÀÚ¸¦ Á¦¿ÜÇÑ 5ÀÌ»ó ±ÛÀÚ ÃßÃâ 