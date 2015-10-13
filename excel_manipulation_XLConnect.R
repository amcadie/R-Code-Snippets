##this quick script allows reading, manipulating, and writing Excel files using
##the XLConnect package

library(XLConnect)

#Step one is to load the workbook, creating an object of class "workbook", which
#is a Java object reference by which the original Excel file can be manipulated.
#The underlying Excel file is manipulated in memory and is not written to disk 
#until saveWorkbook is called.

wb <- loadWorkbook("db60_10-13-15.xlsx") #.xls and .xlsx formats are supported

#the readWorksheet function creates a data frame
xldata <- readWorksheet(wb, sheet = 1)

#the data can now be manipulated as normal, in this case we'll filter down to 
#rows containing the parameter of interest
xldata <- subset(xldata, 
                 subset = !is.na(xldata$Colombic.Efficiency.from.cycles.7_25))

#write the changes back to the workbook on a new sheet
createSheet(wb, name = "processed")
writeWorksheet(object = wb, data = xldata, sheet = 2)

#As mentioned earlier, the saveWorkbook function writes the edited workbook object
#to disk.  If the "file" arguement is not specified, the filename will default to 
#what was passed to loadWorkbook. (i.e. "save" vs "save as")
saveWorkbook(wb, "db60_10-13-15_processed.xlsx")

