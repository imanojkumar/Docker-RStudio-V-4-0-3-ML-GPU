# code to install packages in the docker file
install.packages("tidyverse", dependencies = T)
install.packages("dplyr", dependencies = T)
install.packages("ggthemes", dependencies = T)
install.packages("ggtext", dependencies = T)
install.packages("cowplot", dependencies = T)
install.packages("ggplotgui", dependencies = T)
install.packages("ggplotlyExtra", dependencies = T)
install.packages("ggplot2movies", dependencies = T)
install.packages("ggmap", dependencies = T)
install.packages("ggcorrplot", dependencies = T)
install.packages("ggalt", dependencies = T)
install.packages("flexdashboard", dependencies = T)
install.packages("shiny", dependencies = T)
install.packages("shinydashboard", dependencies = T)
install.packages("shinydashboardPlus", dependencies = T)
install.packages("shinyjs", dependencies = T)
install.packages("shinythemes", dependencies = T)
install.packages("servr", dependencies = T)
install.packages("broom", dependencies = T)
install.packages("tidygapminder", dependencies = T)
install.packages("gapminder", dependencies = T)
install.packages("caret", dependencies = T)
install.packages("ggExtra", dependencies = T)
install.packages("lubridate", dependencies = T)
install.packages("ReinforcementLearning", dependencies = T)
install.packages("magrittr", dependencies = T)
install.packages("plotly", dependencies = T)
install.packages("openssl", dependencies = T)
install.packages("rvest", dependencies = T)
install.packages("qdap", dependencies = T)
install.packages("stringr", dependencies = T)
install.packages("twitteR", dependencies = T)
install.packages("syuzhet", dependencies = T)
install.packages("scales", dependencies = T)
install.packages("reshape2", dependencies = T)

# The following two commands remove any previously installed H2O packages for R.
if ("package:h2o" %in% search()) { detach("package:h2o", unload=TRUE) }
if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }

# Next, we download packages that H2O depends on.
pkgs <- c("RCurl","jsonlite")
for (pkg in pkgs) {
if (! (pkg %in% rownames(installed.packages()))) { install.packages(pkg) }
}

# Now we download, install and initialize the H2O package for R.
install.packages("h2o", type="source", repos="http://h2o-release.s3.amazonaws.com/h2o/rel-yates/1/R")

