# For each site in the data we will generate a report with the RMD template
for(species_param in unique(iris$Species)){
  
  # The pdf reports will be saved in the Output folder with the name Demo_report_<site>.pdf
  rmarkdown::render(input = "Report.rmd", 
                    output_format = "pdf_document",
                    output_file = paste("Demo_report_",species_param,".pdf",sep=''),
                    output_dir = "Output")
}


