#코딩변경
#가독성을 위한 코딩 변경(resident 칼럼을 대상으로 코딩 변경)
dataset2$resident2[dataset2$resident==1]<-'1. 서울특별시'
dataset2$resident2[dataset2$resident==2]<-'2. 인천광역시'
dataset2$resident2[dataset2$resident==3]<-'3. 대전광역시'
dataset2$resident2[dataset2$resident==4]<-'4. 대구광역시'
dataset2$resident2[dataset2$resident==5]<-'5. 시군구'

#코딩 전과 후 
head(dataset2[c("resident","resident2")])

#척도 변경을 위한 코딩 변경 (age 칼럼을 대상으로 코딩 변경)
dataset2$age2[dataset2$age<=30]<-"청년층"
dataset2$age2[dataset2$age>30&dataset2$age<=55]<-"중년층"
dataset2$age2[dataset2$age>50]<-"장년층"
head(dataset2)

#역코딩을 위한 코딩 변경 (survey 칼럼을 대상으로 1~5순서로 코딩된 값을 5~1순서로 역코딩)
survey<-dataset2$survey
head(survey)

curvey<-6-survey
head(curvey)


