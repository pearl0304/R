# R
R 수업시간 내용 정리

## DataFrame 홀짝행 
1. 데이터프레임에서 홀수행만, 짝수행만 추출하기 예제 실습 

## EDA1_결측치제거
1. 데이터 셋 구조 보기 
2. 데이터 셋 조회  : 객체$변수
3. 결측치 확인
4. 결측치 제거
5. 결측치 대체 
6. 극단치 처리
+ 범주형 변수 극단치 처리 
+ 연속형 변수 극단치 처리  예1
+ 연속형 변수의 극단치 처리 예2 
7. boxplot 그래프 활용하기 

## EDA2_코딩변경
1. 코딩변경 
2. 역코딩을 위한 코딩 변경

## EDA3_범주형연속형
1. 범주형 vs 범주형
2. 연속형 vs 범주형
3. 연속형 vs 범주형 vs 범주형
4. 연속형(2개) vs 범주형(1개)

## EDA4_파생,더비변수
1. 더미 형식으로 파생변수 생성
2. 관계로 파생변수 생성
3. 파생변수 합치기

## dplyr 패키지1
1. filter ( dataframe, 조건1, 조건2)
2. arrange(dataframe, 칼럼1, desc(칼럼2) )
3. select(dataframe, 칼럼1, 칼럼2)
4. mutate(dataframe, 칼럼명1=수식1 , 칼럼명2=수식2)
5. summarise(dataframe,추가할 칼럼명 = 함수(칼럼명)

## dplyr 패키지2
1. group_by(dataframe, 집단변수)
2. join(df1,df2,by="결합할 칼럼")
+ inner_join(df1, df2, by='결합할 칼럼')
+ left_join(df1, df2, by="결합할 칼럼")
+ right_join(df1, df2, by="결합할 칼럼")
+ full_join(df1, df2, by="결합할 칼럼")
3. bind(df,df2)
+ bind_row(df1,df2)
+ bind_cols(df1,df2)
4.rename(dataframe, 변경후칼럼명 = 변경전 칼럼명) 

## ggplot2 패키지_ggplot
1. ggplot()

## ggplot2 패키지_qplot
1. qplot()

## lattice 패키지
1. histogram(~x축 |조건 ,data)
2. densityplot(~축 | 조건 , data, groups=변수)
3. barchart(y축~x축|조건 , data, layout)
4. dotplot(y축 ~x축 |조건, data, layout)
5. xyplot(y축 ~x축 | 조건변수 , data=dataframe or list , layout )
6. 데이터 범주화 - equal.count(data,number=n , overlap=n)
7. 조건 그래프 - coplot(y축~x축|조건 , data)
8. 3차원 산점도 그래프 cloud(z축 변수~y축 변수*x축 변수, data)

## reshape2 패키지
1. dacast(데이터 셋, 앞변수~ 뒷변수, 적용함수) 
2. melt(데이터 셋 , id="칼럼명")
3. acacst(데이터 셋, 앞변수~뒷변수)

## 데이터시각화_변수간의 비교
1. pairs()
2. scatterplot3d()

## 데이터시각화_연속변수
1. 연속변수 시각화 -boxplot
2. 연속변수 시각화 - hist()
3. 연속변수 시각화 -scatter plot()

## 데이터시각화_이산변수
1. 이산변수 시각화  - barplot() 
2. 이산변수 시각화 - dotchart()
3. 이산변수 시각화 - pie() 

## 데이터시각화_중첩자료
1. UsingR 패키지를 활용한 데이터 시각화

## 문자추출 
1. stringr 패키지를 활용하여 문장에서 원하는 문자 추출하기

## 특정문자열 제외 
1. 특정 문자열 제외하는 정규표현식으로 원하는 문자 추출
