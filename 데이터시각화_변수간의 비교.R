#pairs() : matrix or dataframe의 numeric 칼럼을 대상으로 변수들을 사로 비교 결과를 행렬 구조로 분산된 그래프 제공
#iris 데이터 중 virginica 꽃을 대상으로 4개의 변수를 비교하여 행렬구조로 차트 만들기 
pairs(iris[iris$Species=="virginica",1:4])

#iris 데이터 중 setosa 꽃을 대상으로 4개의 변수를 비교하여 행렬구조로 차트 만들기 
pairs(iris[iris$Species=="setosa",1:4])


#scatterplot3d(밑변, 오른쪽변의 칼럼명, 왼쪽변의 칼럼명, type)
install.packages("scatterplot3d")
library(scatterplot3d)

#1. 꽃을 종류별로 분류
setosa=iris[iris$Species=="setosa", ]
versicolor=iris[iris$Species=="versicolor", ]
virginica=iris[iris$Species=="virginica", ]

#2. 3차원 틀 생성하기 type='n' => 기본 산점도 표시 안함 
d3<-scatterplot3d(iris$Petal.Length,iris$Sepal.Length,iris$Sepal.Width,type='n')
d3<-scatterplot3d(iris$Petal.Length,iris$Sepal.Length,iris$Sepal.Width)
#3. 3차원 산점도 시각화 
d3$points3d(setosa$Petal.Length,setosa$Sepal.Length,setosa$Sepal.Width,bg="orange",pch=21)
d3$points3d(versicolor$Petal.Length,versicolor$Sepal.Length,versicolor$Sepal.Width,bg="blue",pch=23)
d3$points3d(virginica$Petal.Length,virginica$Sepal.Length,virginica$Sepal.Width,bg="red",pch=25)
