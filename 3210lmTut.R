# simple linear regression
# Set random seed, such that you can replicate the results on your 
# own every time
set.seed(3)

# generate predictors x and y, each with length 20 
# distributed according to N(0,4)
x1=rnorm(20,0,4)
x2=rnorm(20,0,4)

# e is the while noice
e=rnorm(length(x1))

# construct the response
y=2*x1+3*x2+e
mod=lm(y~x1+x2)

###############################end of the first example####################

##############################second example###############################

#fitting polynomial
x=rnorm(40,0,4)
x1=x>0
x2=x<=-1
x1=as.numeric(x1)
x2=as.numeric(x2)
for(i in 1:40){
  if (x[i]>0){y[i]=2+rnorm(1,0,1)}
  if (x[i]<=-1){y[i]=3+rnorm(1,0,1)}
}
model=lm(y~x1+x2)

###############################End of second example######################
###############################Iris example###############################

# iris model

getcwd()
# Change the path into the directory where you store the data
# Don't copy & paste this path onto your computer, it may be invalid
setcwd('C:/Desktop/')
iris=read.csv('iris.csv')

# construct the data by throwing the species variable away
column=c(colnames(iris))
column=column[1:4]
data1=iris[column]

# regress!
model=lm(Sepal.Length~.,data=data1)
