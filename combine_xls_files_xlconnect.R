cFC <- function(form_file, stab_file, write_name){
    
    options(java.parameters = "-Xmx2g")
    library(XLConnect)
    
    #get sheet index for formation cycle summary data
    form_wb <- loadWorkbook(form_file)
    form_sheets <- getSheets(form_wb)
    form_index <- grep("Statistics", form_sheets)
    
    #get sheet index for stability cycle summary data
    stab_wb <- loadWorkbook(stab_file)
    stab_sheets <- getSheets(stab_wb)
    stab_index <- grep("Statistics", stab_sheets)
    
    #read cycle summaries
    form <- readWorksheet(form_wb, sheet = form_index)
    stab <- readWorksheet(stab_wb, sheet = stab_index)
    
    #concatenate tables
    combined <- rbind(form, stab)
    
    #correct cycle indicies
    combined[,1] <- 1:nrow(combined)
      
    writeWorksheetToFile(file = write_name, data = combined, sheet = "DB Summary")
}

