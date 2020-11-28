#library(devtools)
#covidSupp.raw <- read.csv("data/covidSupp_20200630.csv", header=TRUE)
covidSupp.raw <- read.csv("covidSupp_20200630.csv", header=TRUE)

library(data.table)
covidSupp <- setnames(covidSupp.raw, old = c("일련번호","지역","업력","대출년도","대출월","대출금액.백만원.","업종"), new = c("no","region","startup.year","year","month","loan.krw1mil","industry"))
covidSupp$startup.year

covidSupp$region <- factor(covidSupp$region, labels =
                             c("Gangwon", "Gyeonggi", "Gyeongnam", "Gyeongbuk", "Gwangju", "Daegu", "Daejeon", "Busan", "Seoul", "Sejong", "Ulsan", "Incheon", "Jeonnam", "Jeonbuk ","Jeju", "Chungnam", "Chungbuk"))
covidSupp$startup.year <- factor(covidSupp$startup.year, labels =  c(10, 15, 1, 20, 99, 3, 5, 7))
covidSupp$startup.year <- as.integer(covidSupp$startup.year)
covidSupp$industry <- factor(covidSupp$industry, labels = c("Metal","Machinery","Other","Textiles","Food","Distribution","Goods","Electricity","Electronic","Information","ChemicalEngineering"))

#use_data(covidSupp)

str(covidSupp)
summary(covidSupp)

