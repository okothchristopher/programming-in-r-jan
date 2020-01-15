
#print the cube of nunmbers from 1 to and their sum and create a data frame and write an excel file 
result <- data.frame()  #this creates blank data frame 
sm1 <- 0
n <- 100
for  (i in 1:100) {
  s <- i^3
  u <- i^2
  v <- sqrt(i)
  #print(s)
  sm1 <- sm1+s
  

#print(sm1)

frame <- data.frame(i,s,u,v)
names(frame) <- c("number","cube","square","sqrt")
result <- rbind(result,frame)



}


# write the resulting data frame in an excel sheet
writexl::write_xlsx(result,"C:/Users/christopher/Desktop/r practices/number_cube.xlsx")










##### repeat of the above with numbers 5,10,15.20,,,,,,,,,,,500
result <- data.frame()  #this creates blank data frame 
chris <- seq(5,500,5)
for  (i in chris) {
  s <- i^3
  u <- i^2
  v <- sqrt(i)
  #print(s)
 
  
  
  #print(sm1)
  
  frame <- data.frame(i,s,u,v)
  names(frame) <- c("number","cube","square","sqrt")
  result <- rbind(result,frame)
  
  
  
}



#########if conditional 
#1 printing numbers divisible by 3 or divisible by 5
# the remaider is zero

n <- 200
for(i in 1:n){
  if(i%%3==0|i%%5==0)
    print(i)
}

## REWARD SYSTEM AND OBTAINING A MATRIX TO STORE THE DATA 
#assume  you have 10 stdnts each taking 5 unuits ,find mean and print reward 
sn <- 2
un <- 5
stdnt_data <- matrix(1:(sn*un),nrow =un )
for(i in 1:sn){
  for(j in un){
    marks <- readline("enter marks")
    marks <- as.integer(marks)
    stdnt_data[j,i] <- marks
  }
}

### the redo of the reward system 
reward <- data.frame()

repeat{
  total <- 0
  student<-   as.character(readline("student to enter marks?: "))
  if(student=="yes"){
    name <- as.character(readline("enter student name: "))
    no_of_units <- as.integer(readline("Enter number of units "))
  
    for(i in 1:no_of_units){
      units <- as.integer(readline("enter the marks for the unit"))
      total <- total+units
      score <- total/no_of_units
    }
    if(score<40 ){
      gift <- "pull up your socks"
    }
    else{
      gift <- "good student"
    } 
      
  }else{
    break
    }
  frame <- data.frame(name,units,total,score,gift)
  names(frame) <- c("name","units","total","score","reward")
  reward <- rbind(reward,frame)
}





