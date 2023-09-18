library(ggplot2)

Frequency <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
BP <- c(103,87,32,42,59,109,78,205,135,176)
First <- c(1,1,1,1,0,0,0,0,NA,1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
FinalDecision <- c(0,1,0,1,0,1,0,1,1,1)

hospital_data <- data.frame(Frequency, BP, First, Second, FinalDecision)
hospital_data <- na.omit(hospital_data)

ggplot(hospital_data, aes(x=as.factor(First), y=BP)) + 
  geom_boxplot(fill="blue", alpha=0.2) + 
  xlab("good                                                         bad") +
  ggtitle("First Visit")

ggplot(hospital_data, aes(x=as.factor(Second), y=BP)) + 
  geom_boxplot(fill="blue", alpha=0.2) + 
  xlab("good                                                         bad") +
  ggtitle("Second Visit")

ggplot(hospital_data, aes(x = Frequency)) +
  geom_histogram(fill="skyblue", color="slategrey", alpha=0.9) +
  geom_point(aes(Frequency, (BP)/100), color = "red", size = 8, alpha = 0.4)