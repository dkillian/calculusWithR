# prep

library(showtext)
font_add_google("Source Sans 3", "Source Sans 3")
showtext_auto()
# showtext_opts(dpi=300)

# PACKAGES ---- 

# base ---- 

base_packages <- c("tidyverse", # "easystats"
                   "corrplot","DescTools","estimatr","extrafont","janitor",
                   "reshape2", "haven", "broom","HH","Hmisc","plotrix","scales","sysfonts","foreign","car",
                   "ICC","openxlsx","readr","readxl","sjmisc","sjPlot","flextable", "sjstats","sjlabelled","skimr",
                   "labelled", "texreg","viridis","here","jtools","huxtable","stringi", "kableExtra", "psych", "knitr", 
                   "fastDummies", "sn", "diagis")
# 
# Install packages not yet installed
# installed_packages <- base_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(base_packages[!installed_packages])
# }

lapply(base_packages, library, character.only=T)

# viz ---- 

viz_packages <- c("patchwork","gganimate","ggstatsplot","ggthemes","ggrepel",
                  "ggpubr","cowplot","ggdist","ggtext", "geomtextpath","ggfortify",
                  "ggridges", "gghighlight", "gridExtra", "glue")

# # Install packages not yet installed
# installed_packages <- viz_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(viz_packages[!installed_packages])
# }
# 
# lapply(viz_packages, library, character.only=T)

# survey ---- 

# survey_packages <- c("survey","sampling","SDAResources", "PracTools")
# 
# installed_packages <- survey_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(survey_packages[!installed_packages])
# }
# 
# lapply(survey_packages, library, character.only=T)

# graph ---- 

graph_packages <- c("igraph", "ggraph", "statnet", "sna", "intergraph", "tidygraph", "dagitty", "ggdag", "gganimate")

# installed_packages <- graph_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#  install.packages(graph_packages[!installed_packages])
# }

# model ---- 

model_packages <- c("plm","estimatr", "lme4", "qte", "estimatr", "fixest", "lfe", "tidymodels")

# Install packages not yet installed
# installed_packages <- model_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(model_packages[!installed_packages])
# }
# 
# lapply(model_packages, library, character.only=T)

# bayes ---- 

bayes_packages <- c("cmdstanr", "rstan","rstanarm","brms","rethinking", "tidybayes", "baggr")

# Install packages not yet installed
# installed_packages <- bayes_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(bayes_packages[!installed_packages])
# }
# 
# lapply(bayes_packages, library, character.only=T)

#set_cmdstan_path("C:/Users/dan.killian/Documents/.cmdstan/cmdstan-2.35.0")

options(brms.backend="cmdstanr")

# indirect measurement ---- 

# indirect_packages <- c("rr", "RRreg", "list", "endorse")
# 
# # Install packages not yet installed
# installed_packages <- indirect_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(indirect_packages[!installed_packages])
# }
# 
# lapply(indirect_packages, library, character.only=T)


# ie ---- 

# ie_packages <- c("gsynth", "MatchIt", "did", "bacondecomp")
# 
# # Install packages not yet installed
# installed_packages <- ie_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(ie_packages[!installed_packages])
# }
# lapply(ie_packages, library, character.only=T)

# map ---- 

# map_packages <- c("rgeoboundaries", "ggmap", "sf","rnaturalearth","rnaturalearthdata",
#                   "mapview", "spData", "spDataLarge", "tmap", "crsuggest", "geodata", 
#                   "terra", "blackmarbler", "raster", "exactextractr")
# 
# # Install packages not yet installed
# installed_packages <- map_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(map_packages[!installed_packages])
# }
# 
# lapply(map_packages, library, character.only=T)

# table ---- 

table_packages <- c("gt", "gtsummary", "gtExtras","flextable", "officer")
# 
# Install packages not yet installed
# installed_packages <- table_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#    install.packages(table_packages[!installed_packages])
#  }
# # 
# lapply(table_packages, library, character.only=T)
# # 
# rm(table_packages)

# missing ---- 

# miss_packages <- c("missForest","missMDA")
# 
# # Install packages not yet installed
# installed_packages <- miss_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#   install.packages(miss_packages[!installed_packages])
# }
# 
# lapply(miss_packages,library, character.only=T)
# 
# rm(miss_packages)

# text mining packages ---- 

# text_packages <- c("text", "tidytext", "topicmodels", "wordcloud", "umap", "RSpectra", "Rtsne")
# 
# # Install packages not yet installed
# installed_packages <- text_packages %in% rownames(installed.packages())
# if (any(installed_packages == FALSE)) {
#     install.packages(miss_packages[!installed_packages])
# }
# 
# lapply(text_packages,library, character.only=T)
# 
# rm(text_packages)

# function for loading packages ---- 

pckg_load <- function(packages) {
    # Install packages not yet installed
    installed_packages <- packages %in% rownames(installed.packages())
    if (any(installed_packages == FALSE)) {
        install.packages(packages[!installed_packages])
    }
    
    # Load the packages
    lapply(packages,library, character.only=T)
}

pckg_load(c(base_packages, viz_packages, table_packages, graph_packages, model_packages, bayes_packages))

#pckg_load(text_packages)

rm(base_packages)
rm(viz_packages)
rm(table_packages)
rm(graph_packages)
rm(model_packages)
rm(bayes_packages)

# FORMATTING ---- 

options(digits=3, scipen=6)

# set default
base <- theme_bw() + theme(panel.grid.minor.x=element_blank(),
                           panel.grid.minor.y=element_blank(),
                           plot.title=element_text(#face="bold",
                                                   size=22, hjust=.5, 
                                                   family = "Source Sans 3"),
                           plot.subtitle = element_text(size=20, family="Source Sans 3"),
                           plot.caption=element_text(size=18, family="Source Sans 3"),
                           axis.title=element_text(size=20, family="Source Sans 3"),
                           axis.text=element_text(size=18, family="Source Sans 3"),
                           legend.text=element_text(size=18, family="Source Sans 3"),
                           strip.text=element_text(size=18, family="Source Sans 3"),
                           panel.border=element_blank(),
                           axis.ticks = element_blank())

theme_set(base)

base_grid <- theme_bw() + theme(panel.grid.minor.x=element_blank(),
                           panel.grid.minor.y=element_blank(),
                           plot.title=element_text(size=22, hjust=.5, 
                                                   family = "Source Sans 3"),
                           plot.subtitle = element_text(size=20, family="Source Sans 3"),
                           plot.caption=element_text(size=18, family="Source Sans 3"),
                           axis.title=element_text(size=20, family="Source Sans 3"),
                           axis.text=element_text(size=18, family="Source Sans 3"),
                           legend.text=element_text(size=18, family="Source Sans 3"),
                           strip.text=element_text(size=18, family="Source Sans 3"),
                           panel.border=element_blank(),
                           axis.ticks = element_blank())

base_ppt <- theme_bw() + theme(panel.grid.minor.x=element_blank(),
                           panel.grid.minor.y=element_blank(),
                           plot.title=element_text(#face="bold",
                             size=22, hjust=.5, family = "Source Sans 3"),
                           plot.subtitle = element_text(size=20, family="Source Sans 3"),
                           plot.caption=element_text(size=18, family="Source Sans 3"),
                           axis.title=element_text(size=20, family="Source Sans 3"),
                           axis.text=element_text(size=18, family="Source Sans 3"),
                           legend.text=element_text(size=18, family="Source Sans 3"),
                           strip.text=element_text(size=18, family="Source Sans 3"),
                           panel.border=element_blank(),
                           axis.ticks = element_blank())


faceted <- theme_bw() +
    theme(panel.grid.minor.x=element_blank(),
          panel.grid.minor.y=element_blank(),
          plot.title=element_text(#face="bold",
                                  size=22, hjust=.5, family = "Source Sans 3"),
          plot.subtitle = element_text(size=20, family="Source Sans 3"),
          plot.caption=element_text(size=18, family="Source Sans 3"),
          axis.title=element_text(size=20, family="Source Sans 3"),
          axis.text=element_text(size=18, family="Source Sans 3"),
          legend.text=element_text(size=18, family="Source Sans 3"),
          strip.text=element_text(size=18, family="Source Sans 3"))



facet_style <- function(){theme_bw() +
        theme(panel.grid.minor.x=element_blank(),
              panel.grid.minor.y=element_blank(),
              plot.title=element_text(face="bold",size=18, hjust=.5, family = "Source Sans 3"),
              plot.subtitle = element_text(size=16, family="Source Sans 3"),
              plot.caption=element_text(size=12, family="Source Sans 3"),
              axis.title=element_text(size=16, family="Source Sans 3"),
              axis.text=element_text(size=14, family="Source Sans 3"),
              legend.text=element_text(size=14, family="Source Sans 3"),
              strip.text=element_text(size=14, family="Source Sans 3"))
}

# colors ----

color_names <- c("USAID_blue","USAID_red","rich_black","medium_blue","light_blue", "web_blue","dark_red","dark_gray","medium_gray","light_gray")

color_id <- c("#002F6C", "#BA0C2F", "#212721", "#0067B9","#A7C6ED", "#205493","#651D32", "#6C6463", "#8C8985", "#CFCDC9")

USAID_palette <- data.frame(color=color_names,
                            id=color_id)

USAID_palette

usaid_blue <- "#002F6C"
usaid_red <- "#BA0C2F"
rich_black <- "#212721"
medium_blue <- "#0067B9"
light_blue <- "#A7C6ED"
web_blue <- "#205493"
dark_red <- "#651D32"
dark_grey <- "#6C6463"
medium_grey <- "#8C8985"
light_grey <- "#CFCDC9"

options(
    ggplot2.discrete.colour   = function(...) scale_colour_viridis_d(...),
    ggplot2.discrete.fill     = function(...) scale_fill_viridis_d(...),
    ggplot2.continuous.colour = "viridis",
    ggplot2.continuous.fill   = "viridis"
)

virid <- viridis(10)

# flextable defaults ---- 

set_flextable_defaults(
  font.family = "Gill Sans MT",
  font.size = 10,
  font.color = "black",
  table.layout = "autofit"
)



# read data

