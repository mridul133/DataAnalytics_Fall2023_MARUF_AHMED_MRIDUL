library(readxl)

EPI_data <- read.csv("2010EPI_data.csv", header = T, skip=1)
#or

# EPI_data <- read_excel("2010EPI_data.xls", sheet = "EPI2010_all countries")
# Note: replace default data frame name – cannot start with numbers!
View(EPI_data)

str(EPI_data)

attach(EPI_data) 	# sets the ‘default’ object
fix(EPI_data) 	# launches a simple data editor
EPI 			# prints out values EPI_data$EPI

tf <- is.na(EPI) # records True values if the value is NA
tf
E <- EPI[!tf] # filters out NA values, new array
E

summary(EPI)
fivenum(EPI, na.rm = T)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)

par(pty="s")
qqnorm(EPI); qqline(EPI)

x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for tdsn")
qqline(x)

#other data
GRUMP_data <- read.csv(”<path>/GPW3_GRUMP_SummaryInformation_2010.csv")

cat("\014")

