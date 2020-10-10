
### if else : 19.4 ###

#has the syntax:
#  if (condition) {
    # Code to execute if true
#  } else {
#    # Code to execute if above was not true
#  }

hot <- FALSE
temp <- 60
if (temp > 80){
  hot <- TRUE
  
}
hot

# Reset temp
temp <- 100

if (temp > 80){
  hot <- TRUE
  
}

hot

if( 1 == 1){        print('hi')}

temp <- 30

if (temp > 80){
  print("Hot outside!")
} else if(temp<80 & temp>50){
  print('Nice outside!')
} else if(temp <50 & temp > 32){
  print("Its cooler outside!")
} else{
  print("Its really cold outside!")
}

temp <- 75

if (temp > 80){
  print("Hot outside!")
} else if(temp<80 & temp>50){
  print('Nice outside!')
} else if(temp <50 & temp > 32){
  print("Its cooler outside!")
} else{
  print("Its really cold outside!")
}

# Items sold that day
ham <- 10
cheese <- 10

# Report to HQ
report <- 'blank'


if(ham >= 10 & cheese >= 10){
  report <- "Strong sales of both items"
  
}else if(ham == 0 & cheese == 0){
  report <- "Nothing sold!"
}else{
  report <- 'We had some sales'
}
print(report)

### Iteration: for loops - 21.2 ###
vec <- c(1,2,3,4,5)
for (temp_var in vec){
  print(temp_var)
}

for (i in 1:length(vec)){
  print(vec[i])
}

li <- list(1,2,3,4,5)
for (temp_var in li){
  print(temp_var)
}

for (i in 1:length(li)){
  print(li[[i]]) # Remember to use double brackets!
}

mat <- matrix(1:25,nrow=5)
mat

for (num in mat){
  print(num)
}

for (row in 1:nrow(mat)){
  for (col in 1:ncol(mat)){
    print(paste('The element at row:',row,'and col:',col,'is',mat[row,col]))
  }
}

### Iteration: while loops ###
var <- 'a variable'
cat('My variable is: ',var)
var <- 25
cat('My number is:',var)

# Could also use:
print(paste0("Variable is: ", var))

x <- 0

while(x < 10){
  
  cat('x is currently: ',x)
  print(' x is still less than 10, adding 1 to x')
  
  # add one to x
  x <- x+1
}

x <- 0

while(x < 10){
  
  cat('x is currently: ',x)
  print(' x is still less than 10, adding 1 to x')
  
  # add one to x
  x <- x+1
  if(x==10){
    print("x is equal to 10! Terminating loop")
  }
}

x <- 0

while(x < 10){
  
  cat('x is currently: ',x)
  print(' x is still less than 10, adding 1 to x')
  
  # add one to x
  x <- x+1
  if(x==10){
    print("x is equal to 10!")
    print("I will also print, woohoo!")
  }
  
}


x <- 0

while(x < 10){
  
  cat('x is currently: ',x)
  print(' x is still less than 10, adding 1 to x')
  
  # add one to x
  x <- x+1
  if(x==10){
    print("x is equal to 10!")
    break
    print("I will also print, woohoo!")
  }
}


### functions - chapter 19 ###
#Functions will be one of our main building blocks when we construct larger and larger amounts of code to solve problems.
#Formally, a function is a useful device that groups together a set of statements so they can be run more than once. They can also let us specify parameters that can serve as inputs to the functions.

#built-in functions

help(sum)

# Simple function, no inputs!
hello <- function(){
  print('hello!')
}

helloyou <- function(name){
  print(paste('hello ',name))
}

helloyou('Sammy')

add_num <- function(num1,num2){
  print(num1+num2)
}

add_num(5,10)

hello_someone <- function(name='Frankie'){
  print(paste('Hello ',name))
}

# uses default
hello_someone()

# overwrite default
hello_someone('Sammy')

# function returning values
formal <- function(name='Sam',title='Sir'){
  return(paste(title,' ',name))
}

formal()

formal('Issac Newton')

var <- formal('Marie Curie','Ms.')
var

# Multiplies input by 5
times5 <- function(input) {
  result <- input ^ 2
  return(result)
}

pow_two(4)
result # Not defined outside the scope of the function
input # Not defined outside the scope of the function

v <- "I'm global v"
stuff <- "I'm global stuff"

fun <- function(stuff){
  print(v) 
  stuff <- 'Reassign stuff inside func'
  print(stuff)
}

print(v) #print v
print(stuff) #print stuff
fun(stuff) # pass stuff to function
# reassignment only happens in scope of function
print(stuff)

double <- function(a) {
  a <- 2*a
  a
}
var <- 5
double(var)
var











### functions - 21 ###