# 简介
X1<-c(35,40,40,42,37,45,43,37,44,42,41,39)
mean(X1)
sd(X1)

X2<-c(60,74,64,71,72,68,78,66,70,65,73,75)
mean(X2)
sd(X2)

plot(X1,X2)

# 向量

# 赋值
x<-c(10.4,5.6,3.1,6.4,21.7);x
c(10.4,5.6,3.1,6.4,21.7)->x;x
assign("x", c(10.4,5.6,3.1,6.4,21.7));x

y<-c(x,0,x);y

numeric(length=0)
(z<-numeric(length=10))

# 产生有规律的向量
1:10
10:1

2.312:6
4:7.6

n<-5
1:n-1 # ":"运算的优先级要高于四则运算
1:(n-1)

seq(0,1,length.out=11)
seq(1,9,by=2)
seq(1,6,by=3)
seq(10)
seq(0,1,along.with=rnorm(11))

rep(1:4,times=2)
rep(1:4,length.out=10)
rep(1:4,each=2)
rep(1:4,c(1,2,2,3))


y<-c(8,3,5,7,6,2,8,9);y>5
z<-c(TRUE,FALSE,F,T);z
all(y>5)
any(y>5)
which(y>5)
logical(3)

# 缺失数据

z<-c(1:3,NA);z
ind<-is.na(z);ind
z[is.na(z)]<-0;z
x<-c(0/1,0/0,1/0,NA);x # NaN 不确定 Inf 无穷 NA 缺失
is.nan(x)
is.finite(x)
is.infinite(x)
is.na(x)

# 字符型向量

y<-c("er", "sdf", "eir", "jk", "dim");y
c("er", "sdf", "eir", "jk", "dim")->y;y
character(length=5)

nchar(y)

substr("abcdef",2,4)
substr(rep("abcdef",4),1:4,4:5)
x<-c("asfef","qwerty","yuiop[","b","stuff.blah.yech")
substr(x,2,5)

substring("abcdef",1:6,1:6)
substring(x,2,4:6)
substring(x,2)<-c("..", "+++");x

paste("My", "Job")
paste(1:10)
paste(c("X","Y"),1:6,sep="")
paste("result.",1:4,sep="")
paste("Today is",date())
paste(c("a","b"), collapse=".")

strsplit("A text I want to display with spaces", " ")
a<-(strsplit("a.b.c",split=".")); a # 返回列表
b<-unlist(strsplit("a.b.c",split="."));b # unlist 解除list结构
unlist(strsplit("a.b.c",".",fixed=TRUE))

x<-c("a","b","c");x
noquote(x)

vector(length=3)
vector(mode='numeric', length=5)

x<-c(1+2i,3+4i)
complex(length.out=4)
complex(re=1:4,im=2:3)
complex(mod=1:2,arg=c(pi/6,pi/4))
Re(x)
Im(x)
Mod(x)
Arg(x)
Conj(x)

# 向量的下标运算

x<-c(1,3,7);x[2]
(c(1,3,5)+5)[2]
x[2]<-125;x
x[c(1,3)]<-c(144,169);x
x<-10:20;x[c(1,3,5,9)]
c("a","b","c")[rep(c(2,1,3),times=3)]

x<-10:20;x[-(1:5)]

x<-c(1,4,7);x[x<5]
z<-c(-1,1:3,NA)
y<-z[!is.na(z)];y
z[is.na(z)]<-0;z

y<-numeric(length(x))
y[x<0]<-1-x[x<0]
y[x>=]<-1+x[x>=0]

(ages<-c(Li=33,Zhang=29,Liu=18))
names(ages)
fruit<-c(5,10,1,20);fruit
names(fruit)<-c("orange","banana","apple","peach")
fruit

# 与数值向量有关的函数

x<-c(10,6,4,7,8);x
min(x)
max(x)
range(x)
which.min(x)
which.max(x)

sum(x)
prod(x)
length(x)

median(x)
mean(x)
var(x) # 修正方差
sd(x)
sort(x)

# 因子，表示名义变量或有序变量，没有数值意义，只能用来分类或计数

data<-c(1,2,3,3,1,2,2,3,1,3,2,1)
(fdata<-factor(data))
(rdata<-factor(data,labels=c("I","II","III")))

# levels 因子水平 labels 水平名称

levels(rdata)
levels(fdata)<-c("I","II","III");fdata

gl(3,5,labels=paste0('A',1:3))
gl(5,1,length=15,labels=paste0('B',1:5))

# 与因子有关的函数

table(rdata)
value<-c(18,20,23,32,15,17,22,21,27,30,26,22)
mean(value)
tapply(value, rdata, FUN = mean, simplify = TRUE)

# 矩阵

mdat<-matrix(c(1,2,3,11,12,13),nrow=2,ncol=3,byrow=TRUE,dimnames=list(c("row1","row2"),c("C.1","C.2","C.3")))
A<-matrix(1:15,nrow=3,ncol=5);A
B<-matrix(nr=2,nc=3)
B[1,1]<-1;B[1,3]<-0;B[2,2]<-3;B

dim(A)
X<-1:12;dim(X)<-c(3,4);X

# 与矩阵有关的函数

nrow(A)
ncol(A)
X1<-rbind(1:2,101:102);X1
X2<-cbind(1:2,101:102);X2

cbind(X1,X2)
rbind(X1,X2)

as.vector(A)

X<-matrix(1:6,ncol=2,byrow=T)
dimnames(X)<-list(c("one","two","three"), c("First", "Second"))
X

X<-matrix(1:6,ncol=2,byrow=T)
colnames<-c("")
rownames<-c("one","two","three")

# 矩阵下标

A[1,2]
A[1,2]<-102

A[c(1,3),2:4]
A[-3,-2]
A[-1,]
A[,-2]
A[c(1,3),]
A[2,]<-201:205;A

# 数组 向量是一维数组 矩阵是二维数组

X<-array(1:20,dim=c(4,5));X
Y<-array(1:24,dim=c(3,4,2));Y
Y<-1:24
dim(Y)<-c(3,4,2);Y

a<-1:24
dim(a)<-c(2,3,4)
a[2,1,2]
a[1,2:3,2:3]

a[1,,]
a[,2,]
a[1,1,]
a[]<-0
a[3:10]

b<-matrix(c(1,1,1,2,2,3,1,3,4,2,1,4),ncol=3,byrow=T);b
a[b]
a[b]<-c(101,102,103,104)
a[b]<-0

A<-matrix(1:6,nrow=2);A
apply(A,1,sum)
apply(A,2,mean)

# 对象

# mode 和 length
mode(c(1,3,5)>5)
mode(A)

x<-1:9
mode(x)<-"complex";x
is.numeric(A)
as.character(1:9)

x<-numeric()
x[3]<-17;x
x<-1:3
x<-1:4

x<-x[1:2];x
alpha<-1:10
alpha<-alpha[2*1:5];alpha

length(alpha)<-3;alpha
length(x)
length(A)

# attributes 和 attr
x<-c(apple=2.5, orange=2.1);x
attributes(x)
attributes(x)<-NULL;x

attr(x,"names")
attr(x,"names")<-c("apple","grapes");x
attr(x,"type")<-"fruit";x
attributes(x)

# class

class(A)
class(x)
class(as.character(1:9))

# 列表

Lst<-list(name="Fred",wife="Mary",no.children=3,child.ages=c(4,7,9));Lst
Lst[[2]]
Lst[[4]][2]
Lst[["name"]]
Lst[["child.ages"]]

Lst$name
Lst$wife
Lst$child.ages

Lst$name<-"Jogn";Lst
Lst$income<-c(1980,1600);Lst

# 数据框

df<-data.frame(
    Name=c("Alice","Becka","James","Jeffrey","John"),
    Sex=c("F","F","M","M","M"),
    Age=c(13,13,12,13,12),
    Height=c(56.3,65.3,57.3,62.5,59.0),
    Weight=c(84.0,98.0,83.0,84.0,99.5)
);df

Lst<-list(
    Name=c("Alice","Becka","James","Jeffrey","John"),
    Sex=c("F","F","M","M","M"),
    Age=c(13,13,12,13,12),
    Height=c(56.3,65.3,57.3,62.5,59.0),
    Weight=c(84.0,98.0,83.0,84.0,99.5)
);Lst

Lst$Name
Lst$Sex
Lst$Age
Lst$Height
Lst$Weight

as.data.frame(Lst)

X<-array(1:6,c(2,3));X
data.frame(X)

df[1:2, 3:5]
df[["Height"]]
df$Weight

names(df)
rownames(df)<-c("one","two","three","four","five")
df

attach(df)
r<-Height/Weight;r
df$r<-Height/Weight
detach()

df$r<-with(df, Height/Weight)

xnew<-edit(xold)

lapply(Lst[3:5], mean)$Age
lapply(Lst[3:5], mean)$Height
lapply(Lst[3:5], mean)$Weight
sapply(Lst[3:5], mean)

lapply(Lst[c("Age","Height","Weight")],mean)
sapply(Lst[c("Age","Height","Weight")],mean)

# 读写数据文件

rt<-read.table("houses.data");rt
rt<-read.table("houses.data",header=TRUE);rt

w<-scan("weight.data");w
is.vector(w)

inp<-scan("h_w.data",list(height=0,weight=0));inp

x<-scan()
names<-scan(what="")

library(foreign, help, pos = 2, lib.loc = NULL)
read.spss("educ_scores.sav", to.data.frame=TRUE)
read.xport("educ_scores.xpt")
read.S("educ_scores")
read.dta("educ_scores.dta")

read.delim("educ_scores.txt")

read.csv("educ_scores.csv")

install.packages("RODBC", dependencies=TRUE, repos='http://cran.rstudio.com/')
library(RODBC)

con<-odbcConnectExcel("educ_scores.xls")
tbls<-sqlTables(con)

sh1<-sqlFetch(con,tbls$TABLE_NAME[1]);sh1

qry<-paste("select * from [",tbls$TABLE_NAME[1],"]",sep="")
sh2<-sqlQuery(con,qry);sh2
close(con)

data()
data(agriculture, package="cluster")

X<-matrix(1:12,ncol=6);X
write(X,file="Xdata.txt")

df<-data.frame(
    Name=c("Alice","Becka","James","Jeffrey","John"),
    Sex=c("F","F","M","M","M"),
    Age=c(13,13,13,13,12),
    Height=c(56.5,65.3,57.3,62.5,59.0),
    Weight=c(84.0,98.0,83.0,84.0,99.5)
    )
write.table(df, file="foo.txt")
write.csv(df,file="foo.csv")

# 控制流

# 分支函数
if (cond) expr
if (cond) cons.expr else alt.expr
if (cond_1)
    expr_1
else if (cond_2)
    expr2
else if (cond_3)
    expr_3
else
    expr_4

# 终止语句和空语句
switch (expr, list)

# 循环函数，包括for while repeat，见loops.R
for(var in seq) expr
while (cond) expr
repeat expr

# 程序设计

# 函数定义
funname<-function(arg_1, arg_2, ...) expression 

# 无参
source("welcome.R")
welcome()

# 有参
X<-scan()
79.98 80.04 80.02 80.04 80.03 80.03 80.04 79.97
80.05 80.03 80.02 80.00 80.02       

Y<-scan()
80.02 79.94 79.98 79.97 79.97 80.03 79.95 79.97        

source("t.stat.R")
t.stat(X,Y)

# 有名参数和默认参数
source("moment.R")

moment(X,k=2)
moment(X,k=2,mean=mean(X))

# 递归函数
source("factorial1.R")
fac(10)

source("factorial1.R")
fac(10)

prod(seq(10)) # 连乘积
gamma(10+1) # 伽马函数
factorial(10) # 阶乘函数

getwd()
setwd("./")

ls() # 工作空间
rm(Y)
ls()

search() # 程序包

library(help="base")

# 调试
f<-function(x,y){
    print(x);print(y);x+y
}

f(10,20)

f<-function(x,y){
    cat('x=',x,'\n')
    cat('y=',y,'\n')
    x+y
}

f(10,20)

# n单步跟踪 c退出跟踪
f<-function(x,y){
    browser()
    x+y
}

f(10,20)

f<-function(x,y){
    x+y
}
debug(f)
f(10,20)

