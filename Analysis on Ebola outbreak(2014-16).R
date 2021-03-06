
## "Ebola outbreak 2014- 2016"

ebola_2014_2016_clean <- read.csv("D:/desktop/R COde/ebola/ebola_2014_2016_clean.csv")

View(ebola_2014_2016_clean)

###   Basic data cleaing 

   Ebola<-ebola_2014_2016_clean
   library(dplyr)
   library(tidyr)
   Ebola<-Ebola %>% separate(Date, c("Month", "Date","Year"))
   Ebola <- Ebola[,-c(6,10)]
   head(Ebola)

   #Arranging the dataset with respect to the countries.

   Ebola%>% arrange(Country)
   
   #Changing the column names.
   
   colnames(Ebola)[5:10]<- c("suspected.cases","confirmed.cases","total.cases","suspected.deaths","confirmed.deaths","total.deaths")
   colnames(Ebola)

   #Creating a list of all the countries that got affected from the outbreak </font>

   country_list<-c(distinct(Ebola,Country))
   print(country_list)

###   Creating total cases vs total deaths plot for each country
   
   #  1) Calculating total cases and deaths in Guinea

      r1 <-Ebola%>% select(total.deaths,Country,Year) %>% filter(Country == "Guinea", Year==2014) 
      r2 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Guinea", Year==2015) 
      r3 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Guinea", Year==2016) 
      
      deaths_2014_Guinea <- sapply(select(r1,total.deaths),na.rm=T,max)
      deaths_2015_Guinea<- sapply(select(r2,total.deaths),na.rm=T,max)-sapply(select(r1,total.deaths),na.rm=T,max)
      deaths_2016_Guinea <- sapply(select(r3,total.deaths),na.rm=T,max)-sapply(select(r2,total.deaths),na.rm=T,max)
      
      
      s1 <-Ebola%>% select(total.cases,Country,Year) %>% filter(Country == "Guinea", Year==2014) 
      s2 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Guinea", Year==2015) 
      s3 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Guinea", Year==2016) 
      
      cases_2014_Guinea <- sapply(select(s1,total.cases),na.rm=T,max)
      cases_2015_Guinea<- sapply(select(s2,total.cases),na.rm=T,max)-sapply(select(s1,total.cases),na.rm=T,max)
      cases_2016_Guinea <- sapply(select(s3,total.cases),na.rm=T,max)-sapply(select(s2,total.cases),na.rm=T,max)

   #  2) Calculating total cases and deaths in Nigeria
   
      r4 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Nigeria", Year==2014) 
      r5 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Nigeria", Year==2015) 
      r6 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Nigeria", Year==2016) 
      
      deaths_2014_Nigeria <- sapply(select(r4,total.deaths),na.rm=T,max)
      deaths_2015_Nigeria<- sapply(select(r5,total.deaths),na.rm=T,max)-sapply(select(r4,total.deaths),na.rm=T,max)
      deaths_2016_Nigeria <- sapply(select(r6,total.deaths),na.rm=T,max)-sapply(select(r5,total.deaths),na.rm=T,max)
      
      
      s4 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Nigeria", Year==2014) 
      s5 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Nigeria", Year==2015) 
      s6 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Nigeria", Year==2016) 
      
      cases_2014_Nigeria <- sapply(select(s4,total.cases),na.rm=T,max)
      cases_2015_Nigeria<- sapply(select(s5,total.cases),na.rm=T,max)-sapply(select(s4,total.cases),na.rm=T,max)
      cases_2016_Nigeria <- sapply(select(s6,total.cases),na.rm=T,max)-sapply(select(s5,total.cases),na.rm=T,max)


   #   3) Calculating total cases and deaths in Sierra
      
      r7 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Sierra Leone", Year==2014) 
      r8 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Sierra Leone", Year==2015) 
      r9 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Sierra Leone", Year==2016) 
      
      deaths_2014_Sierra <- sapply(select(r7,total.deaths),na.rm=T,max)
      deaths_2015_Sierra<- sapply(select(r8,total.deaths),na.rm=T,max)-sapply(select(r7,total.deaths),na.rm=T,max)
      deaths_2016_Sierra <- sapply(select(r9,total.deaths),na.rm=T,max)-sapply(select(r8,total.deaths),na.rm=T,max)
      
      s7 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Sierra Leone", Year==2014) 
      s8 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Sierra Leone", Year==2015) 
      s9 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Sierra Leone", Year==2016) 
      
      cases_2014_Sierra <- sapply(select(s7,total.cases),na.rm=T,max)
      cases_2015_Sierra<- sapply(select(s8,total.cases),na.rm=T,max)-sapply(select(s7,total.cases),na.rm=T,max)
      cases_2016_Sierra <- sapply(select(s9,total.cases),na.rm=T,max)-sapply(select(s8,total.cases),na.rm=T,max)


   #   4)Calculating total cases and deaths in Liberia
      r10 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Liberia", Year==2014) 
      r11 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Liberia", Year==2015) 
      r12 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Liberia", Year==2016) 
      
      deaths_2014_Liberia <- sapply(select(r10,total.deaths),na.rm=T,max)
      deaths_2015_Liberia<- sapply(select(r11,total.deaths),na.rm=T,max)-sapply(select(r10,total.deaths),na.rm=T,max)
      deaths_2016_Liberia <- sapply(select(r12,total.deaths),na.rm=T,max)-sapply(select(r11,total.deaths),na.rm=T,max)
      
      
      s10 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Liberia", Year==2014) 
      s11 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Liberia", Year==2015) 
      s12 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Liberia", Year==2016) 
      
      cases_2014_Liberia <- sapply(select(s10,total.cases),na.rm=T,max)
      cases_2015_Liberia<- sapply(select(s11,total.cases),na.rm=T,max)-sapply(select(s10,total.cases),na.rm=T,max)
      cases_2016_Liberia <- sapply(select(s12,total.cases),na.rm=T,max)-sapply(select(s11,total.cases),na.rm=T,max)

   #   5) Calculating total cases and deaths in Senegal

      r13 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Senegal", Year==2014) 
      r14 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Senegal", Year==2015) 
      r15 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Senegal", Year==2016)
      
      deaths_2014_Senegal <- sapply(select(r13,total.deaths),na.rm=T,max)
      deaths_2015_Senegal<- sapply(select(r14,total.deaths),na.rm=T,max)-sapply(select(r13,total.deaths),na.rm=T,max)
      deaths_2016_Senegal <- sapply(select(r15,total.deaths),na.rm=T,max)-sapply(select(r14,total.deaths),na.rm=T,max)
      
      
      s13 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Senegal", Year==2014) 
      s14 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Senegal", Year==2015) 
      s15 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Senegal", Year==2016)
      
      cases_2014_Senegal <- sapply(select(s13,total.cases),na.rm=T,max)
      cases_2015_Senegal<- sapply(select(s14,total.cases),na.rm=T,max)-sapply(select(s13,total.cases),na.rm=T,max)
      cases_2016_Senegal <- sapply(select(s15,total.cases),na.rm=T,max)-sapply(select(s14,total.cases),na.rm=T,max)

   #  6) Calculating total cases and deaths in USA

      r16 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "USA", Year==2014) 
      r17 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "USA", Year==2015) 
      r18 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "USA", Year==2016) 
      
      deaths_2014_USA<- sapply(select(r16,total.deaths),na.rm=T,max)
      deaths_2015_USA<- sapply(select(r17,total.deaths),na.rm=T,max)-sapply(select(r15,total.deaths),na.rm=T,max)
      deaths_2016_USA <- sapply(select(r18,total.deaths),na.rm=T,max)-sapply(select(r17,total.deaths),na.rm=T,max)
      
      
      s16 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "USA", Year==2014) 
      s17 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "USA", Year==2015) 
      s18 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "USA", Year==2016) 
      
      cases_2014_USA<- sapply(select(s16,total.cases),na.rm=T,max)
      cases_2015_USA<- sapply(select(s17,total.cases),na.rm=T,max)-sapply(select(s15,total.cases),na.rm=T,max)
      cases_2016_USA <- sapply(select(s18,total.cases),na.rm=T,max)-sapply(select(s17,total.cases),na.rm=T,max)


   #   7) Calculating total cases and deaths in Spain

      r19 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Spain", Year==2014) 
      r20 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Spain", Year==2015) 
      r21 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Spain", Year==2016) 
      
      deaths_2014_Spain <- sapply(select(r19,total.deaths),na.rm=T,max)
      deaths_2015_Spain<- sapply(select(r20,total.deaths),na.rm=T,max)-sapply(select(r19,total.deaths),na.rm=T,max)
      deaths_2016_Spain <- sapply(select(r21,total.deaths),na.rm=T,max)-sapply(select(r20,total.deaths),na.rm=T,max)
      
      
      s19 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Spain", Year==2014) 
      s20 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Spain", Year==2015) 
      s21 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Spain", Year==2016) 
      
      cases_2014_Spain <- sapply(select(s19,total.cases),na.rm=T,max)
      cases_2015_Spain<- sapply(select(s20,total.cases),na.rm=T,max)-sapply(select(s19,total.cases),na.rm=T,max)
      cases_2016_Spain <- sapply(select(s21,total.cases),na.rm=T,max)-sapply(select(s20,total.cases),na.rm=T,max)

   #   8) calculating total cases and deaths in Mali
      
      r22 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Mali", Year==2014) 
      r23 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Mali", Year==2015) 
      r24 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Mali", Year==2016) 
      
      deaths_2014_Mali <- sapply(select(r22,total.deaths),na.rm=T,max)
      deaths_2015_Mali<- sapply(select(r23,total.deaths),na.rm=T,max)-sapply(select(r22,total.deaths),na.rm=T,max)
      deaths_2016_Mali <- sapply(select(r24,total.deaths),na.rm=T,max)-sapply(select(r23,total.deaths),na.rm=T,max)
      
      
      s22 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Mali", Year==2014) 
      s23 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Mali", Year==2015) 
      s24 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Mali", Year==2016) 
      
      cases_2014_Mali <- sapply(select(s22,total.cases),na.rm=T,max)
      cases_2015_Mali<- sapply(select(s23,total.cases),na.rm=T,max)-sapply(select(s22,total.cases),na.rm=T,max)
      cases_2016_Mali <- sapply(select(s24,total.cases),na.rm=T,max)-sapply(select(s23,total.cases),na.rm=T,max)

   #   9) calculating total cases and deaths in United kingdom
      
      r25 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "United Kingdom", Year==2014) 
      r26 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "United Kingdom", Year==2015) 
      r27 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "United Kingdom", Year==2016) 
      
      deaths_2014_UnitedKingdom <- sapply(select(r25,total.deaths),na.rm=T,max)
      deaths_2015_UnitedKingdom <- sapply(select(r26,total.deaths),na.rm=T,max)-sapply(select(r25,total.deaths),na.rm=T,max)
      deaths_2016_UnitedKingdom <- sapply(select(r26,total.deaths),na.rm=T,max)-sapply(select(r26,total.deaths),na.rm=T,max)
      
      
      s25 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "United Kingdom", Year==2014) 
      s26 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "United Kingdom", Year==2015) 
      s27 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "United Kingdom", Year==2016) 
      
      cases_2014_UnitedKingdom <- sapply(select(s25,total.cases),na.rm=T,max)
      cases_2015_UnitedKingdom <- sapply(select(s26,total.cases),na.rm=T,max)-sapply(select(s25,total.cases),na.rm=T,max)
      cases_2016_UnitedKingdom <- sapply(select(s26,total.cases),na.rm=T,max)-sapply(select(s26,total.cases),na.rm=T,max)


   #   10) calculating total cases and deaths in Italy

      r28 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Italy", Year==2014) 
      r29 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Italy", Year==2015) 
      r30 <-Ebola %>% select(total.deaths,Country,Year) %>% filter(Country == "Italy", Year==2016) 
      
      deaths_2014_Italy <- sapply(select(r28,total.deaths),na.rm=T,max)
      deaths_2015_Italy<- sapply(select(r29,total.deaths),na.rm=T,max)-sapply(select(r28,total.deaths),na.rm=T,max)
      deaths_2016_Italy <- sapply(select(r30,total.deaths),na.rm=T,max)-sapply(select(r29,total.deaths),na.rm=T,max)
      
      s28 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Italy", Year==2014) 
      s29 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Italy", Year==2015) 
      s30 <-Ebola %>% select(total.cases,Country,Year) %>% filter(Country == "Italy", Year==2016) 
      
      cases_2014_Italy <- sapply(select(s28,total.cases),na.rm=T,max)
      cases_2015_Italy<- sapply(select(s29,total.cases),na.rm=T,max)-sapply(select(s28,total.cases),na.rm=T,max)
      cases_2016_Italy <- sapply(select(s30,total.cases),na.rm=T,max)-sapply(select(s29,total.cases),na.rm=T,max)


###    Creating a seperate dataframe for deaths in each year

   deaths_2014 <- c(deaths_2014_Guinea,deaths_2014_Nigeria,deaths_2014_Sierra,deaths_2014_Liberia,deaths_2014_Senegal,deaths_2014_USA,
                    deaths_2014_Spain,deaths_2014_Mali,deaths_2014_UnitedKingdom ,deaths_2014_Italy    )
   
   
   deaths_2015 <- c(deaths_2015_Guinea,deaths_2015_Nigeria,deaths_2015_Sierra,deaths_2015_Liberia,deaths_2015_Senegal,deaths_2015_USA,
                    deaths_2015_Spain,deaths_2015_Mali,deaths_2015_UnitedKingdom ,deaths_2015_Italy    )
   
   
   deaths_2016 <- c(deaths_2016_Guinea,deaths_2016_Nigeria,deaths_2016_Sierra,deaths_2016_Liberia,deaths_2016_Senegal,deaths_2016_USA,
                    deaths_2016_Spain,deaths_2016_Mali,deaths_2016_UnitedKingdom,deaths_2016_Italy    )
   
   death.Ebola <- data.frame(country_list,deaths_2014,deaths_2015,deaths_2016)
   death.Ebola <- do.call(data.frame, lapply(death.Ebola, function(x) {replace(x, is.infinite(x) | is.na(x), 0)}))
   
   print(death.Ebola)

###   Creating a dataframe for cases in each year


   cases_2014 <- c(cases_2014_Guinea,cases_2014_Nigeria,cases_2014_Sierra,cases_2014_Liberia,cases_2014_Senegal,cases_2014_USA,cases_2014_Spain,
                    cases_2014_Mali,cases_2014_UnitedKingdom ,cases_2014_Italy    )
   
   
   cases_2015 <- c(cases_2015_Guinea,cases_2015_Nigeria,cases_2015_Sierra,cases_2015_Liberia,cases_2015_Senegal,cases_2015_USA,cases_2015_Spain,
                    cases_2015_Mali,cases_2015_UnitedKingdom ,cases_2015_Italy    )
   
   
   cases_2016 <- c(cases_2016_Guinea,cases_2016_Nigeria,cases_2016_Sierra,cases_2016_Liberia,cases_2016_Senegal,cases_2016_USA,cases_2016_Spain,
                    cases_2016_Mali,cases_2016_UnitedKingdom,cases_2016_Italy    )
   
   
   
   case.Ebola <- data.frame(country_list,cases_2014,cases_2015,cases_2016)
   case.Ebola <- do.call(data.frame, lapply(case.Ebola, function(x) {replace(x, is.infinite(x) | is.na(x), 0)}))
   
   case.Ebola$cases_2015[case.Ebola$cases_2015 ==-2] <- 0
   case.Ebola$cases_2016[case.Ebola$cases_2016 ==-6] <- 0
   print(case.Ebola)


###   Plot for total deaths in year 2014</font>


   library(ggplot2)
   library(plotly)
   pl <- ggplot(death.Ebola, aes(x=Country, y=deaths_2014))
   
   pl2 <- pl+geom_bar(stat = 'identity',fill = '#fc0373', alpha= 0.95)
   
   pl3 <- pl2 + xlab('Country')+ylab('No of deaths in 2014 ')
   
   pl4<- pl3+ggtitle(" Number of deaths in year 2014 due to outbreak of Ebola virus")
   
   gpl <- ggplotly(pl4)
   
   print( gpl )
   

###   Plot for total deaths in year 2015</font>


   pl <- ggplot(death.Ebola, aes(x=Country, y=deaths_2015))
   
   pl2 <- pl+geom_bar(stat = 'identity',fill = '#a3cc31', alpha= 0.95)
   
   pl3 <- pl2 + xlab('Country')+ylab('No of deaths in 2015 ')+ggtitle(" Number of deaths in year 2015 due to outbreak of Ebola virus")
   
   gpl <- ggplotly(pl3)
   
   print( gpl )


###  Plot for total deaths in year 2015

   #Since, there were no deaths recoreded in 2016, our plot shows nothing.
   
   pl <- ggplot(death.Ebola, aes(x=Country, y=deaths_2016))
   
   pl2 <- pl+geom_bar(stat = 'identity',fill = '#cc314d', alpha= 0.95)
   
   pl3 <- pl2 + xlab('Country')+ylab('No of deaths ')
   
   pl4<- pl3+ggtitle(" Number of deaths in year 2016 due to outbreak of Ebola virus(no deaths in 2016")
   
   gpl<- ggplotly(pl4)
   
   print( pl4 )
   

###   Plot for cases in 2014</font>


   pl <- ggplot(case.Ebola, aes(x=Country, y=cases_2014))
   
   pl2 <- pl+geom_bar(stat = 'identity',fill='#cc314d',alpha= 0.95)
   
   pl3 <- pl2 + xlab('Country')+ylab('No of Cases ')
   
   pl4<- pl3+ggtitle(" Number of Cases in year 2014 due to outbreak of Ebola virus ")
   
   gpl<- ggplotly(pl4)
   
   print( gpl )


###   Plot for cases in 2015

   pl <- ggplot(case.Ebola, aes(x=Country, y=cases_2015))
   
   pl2 <- pl+geom_bar(stat = 'identity',fill='#fa02cd',alpha= 0.95)
   
   pl3 <- pl2 + xlab('Country')+ylab('No of Cases ')
   
   pl4<- pl3+ggtitle(" Number of Cases in year 2015 due to outbreak of Ebola virus ")
   
   gpl<- ggplotly(pl4)
   
   print( gpl )


###   Plot for cases in 2016
   
   # Since, no cases were recorded in 2016, our plot shows nothing
   
   pl <- ggplot(case.Ebola, aes(x=Country, y=cases_2016))
   
   pl2 <- pl+geom_bar(stat = 'identity',fill='#fa02cd',alpha= 0.95)
   
   pl3 <- pl2 + xlab('Country')+ylab('No of Cases ')
   
   pl4<- pl3+ggtitle(" Number of Cases in year 2016 due to outbreak of Ebola virus( no cases recorded in 2016) ")
   
   gpl<- ggplotly(pl4)
   
   print( pl4 )
   
   
###   Plot for suspected Vs confirmed deaths during the outbreak

   library(ggplot2)
   library(plotly)
   
   pl <- ggplot(Ebola, aes(x=total.deaths, y=total.cases ))
   
   pl2 <- pl+geom_smooth(model=lm,color="Blue", fill="Red")
   pl3 <- pl2 + xlab('Total deaths')+ylab("Total cases")+ggtitle("Plot for total cases vs total deaths")
   
   gpl<- ggplotly(pl3)
   print(gpl)
   
###   Plot for total deaths due Ebola virus

   pl <- ggplot(Ebola, aes(y=total.deaths,x= Year))
   
   pl2 <- pl+geom_bar(stat = "identity",color="red") 
   pl3 <- pl2 + xlab('Year')+ylab("Total deaths")+ggtitle("Plot for  total deaths")
   
   gpl<- ggplotly(pl3)
   print(gpl)

###   Plot for total Cases

   pl <- ggplot(Ebola, aes(y=total.cases,x= Year))
   
   pl2 <- pl+geom_bar(stat = "identity",color="red") 
   pl3 <- pl2 + xlab('Year')+ylab("Total cases")+ggtitle("Plot for  total cases")
   
   gpl<- ggplotly(pl3)
   print(gpl)


###   pie charts for mortality rates

   #year2014
      df.2014 <-  data.frame(country_list,case.Ebola$cases_2014,death.Ebola$deaths_2014)
      df.2014 <- do.call(data.frame, lapply(df.2014, function(x) {replace(x, is.infinite(x) | is.na(x), 0)}))
      print(df.2014)
   
      death.percentage.2014 = c(sum(df.2014$death.Ebola.deaths_2014)/sum(df.2014$case.Ebola.cases_2014), 
                                (sum(df.2014$case.Ebola.cases_2014) - sum(df.2014$death.Ebola.deaths_2014))/sum(df.2014$case.Ebola.cases_2014))
      print(death.percentage.2014)
   
   #year2015   
      df.2015 <-  data.frame(country_list,case.Ebola$cases_2015,death.Ebola$deaths_2015)
      df.2015 <- do.call(data.frame, lapply(df.2015, function(x) {replace(x, is.infinite(x) | is.na(x), 0)}))
      print(df.2015)
      
      death.percentage.2015 = c(sum(df.2015$death.Ebola.deaths_2015)/sum(df.2015$case.Ebola.cases_2015),
                                (sum(df.2015$case.Ebola.cases_2015) - sum(df.2015$death.Ebola.deaths_2015))/sum(df.2015$case.Ebola.cases_2015))
      print(death.percentage.2015)
   
   #year2016
      df.2016 <-  data.frame(country_list,case.Ebola$cases_2016,death.Ebola$deaths_2016)
      df.2016 <- do.call(data.frame, lapply(df.2016, function(x) {replace(x, is.infinite(x) | is.na(x), 0)}))
      print(df.2016)
      
      death.percentage.2016 = c(sum(df.2016$death.Ebola.deaths_2016)/sum(df.2016$case.Ebola.cases_2016),
                                (sum(df.2016$case.Ebola.cases_2016) - sum(df.2016$death.Ebola.deaths_2016))/sum(df.2016$case.Ebola.cases_2016))
      print(death.percentage.2016)
   
   #2014-15-16
      death.percentage = c(sum(Ebola$total.deaths)/sum(Ebola$total.cases),
                           (sum(Ebola$total.cases) - sum(Ebola$total.deaths))/sum(Ebola$total.cases))
      death.percentage
   
   #Pie chart for mortality rate in year 2014
   
      library(plotrix)
      
      Group <- c("Death%","Recovered%")
      lbls <- paste0(Group, " ", round(death.percentage.2014 / sum(death.percentage.2014) * 100, 1), "%")
      pie3D(death.percentage.2014,labels=lbls,explode=0.1, main="Death Vs Recoverd in 2014 ")

   #Pie chart for mortality rate in year 2015

      Group <- c("Death","Recovered")
      lbls <- paste0(Group, " ", round(death.percentage.2015 / sum(death.percentage.2015) * 100, 1), "%")
      pie3D(death.percentage.2015,labels=lbls,explode=0.1,main="Death Vs Recovered in 2015 ")
      
   #Pie chart for mortality rate in year 2016
      
      lbls <- c("Recovered 100%")
      slice <- c(0,1)
      pie3D(slice,labels=lbls,main="Death Vs Recovered in 2016 ")

   #Pie chart for total mortality rate during the Ebola Outbreak(2014- 2016)
      
      lbls <- paste0(Group, " ", round(slice / sum(slice) * 100, 1), "%")
      slice <- c(0.4039933, 0.5960067)
      pie3D(slice,labels=lbls,explode=0.1,main="Death Vs Recovered (2014,2015 and 2016) ")





