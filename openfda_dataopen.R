
library("devtools")
#--dosen't work --
#devtools::install_github("ropenhealth/openfda")
#-----------------

#-- alternative----
install_local(path = "C:/R-3.6.1/openfda-master.zip")
#------------------

library("openfda")

patient_ages = fda_query("/drug/event.json") %>%
  fda_count("patient.patientonsetage") %>%
  fda_exec()


library("ggplot2")
qplot(x=term, y=count, data=patient_ages)
