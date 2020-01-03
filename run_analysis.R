ytrain<-read.table("C:\\Users\\Shrishti\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt")
ytest<-read.table("C:\\Users\\Shrishti\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt")
rownx<-readLines("C:\\Users\\Shrishti\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\features.txt")
names(ytrain)<-rownx
names(ytest)<-rownx
labtest<-read.table("C:\\Users\\Shrishti\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt")
ytest<-cbind(ytest,labtest)
labtrain<-read.table("C:\\Users\\Shrishti\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt")
ytrain<-cbind(ytrain,labtrain)
subtest<-read.table("C:\\Users\\Shrishti\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt")
ytest<-cbind(ytest,subtest)
subtrain<-read.table("C:\\Users\\Shrishti\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt")
ytrain<-cbind(ytrain,subtrain)
names(ytrain)[562]<-"activity"
names(ytrain)[563]<-"subject"
names(ytest)[562]<-"activity"
names(ytest)[563]<-"subject"
finaldat<-merge(ytrain,ytest,all=TRUE)

g<-grep("mean|std",rownx)
k<-rownx[g]
meanstd<-subset(finaldat,select=k)
meanstd<-cbind(meanstd,finaldat$activity)
meanstd<-cbind(meanstd,finaldat$subject)
names(meanstd)[80]<-"activity"
names(meanstd)[81]<-"subject"

activity1<-readLines("C:\\Users\\Shrishti\\Downloads\\getdata_projectfiles_UCI HAR Dataset\\UCI HAR Dataset\\activity_labels.txt")
k<-sub('[0-9]+ ','',activity1)
meanstd$activity[meanstd$activity=="1"]<-k[1]
meanstd$activity[meanstd$activity=="2"]<-k[2]
meanstd$activity[meanstd$activity=="3"]<-k[3]
meanstd$activity[meanstd$activity=="4"]<-k[4]
meanstd$activity[meanstd$activity=="5"]<-k[5]
meanstd$activity[meanstd$activity=="6"]<-k[6]

n<-names(meanstd)
n<-sub('[0-9]+ ','',n)
n<-sub('^t','(Time domain)',n)
n<-sub('^f','(Frequency domain)',n)
n<-sub('std','standard deviation',n)
names(meanstd)<-n

meltmean<-melt(meanstd,id=c("activity","subject"))
avgdat<-dcast(meltmean,activity+subject~variable,mean)