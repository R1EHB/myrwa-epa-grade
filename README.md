# MyRWA: Annual EPA Grade Assessment - 2014

by [Jeffrey D Walker, PhD](http://walkerjeff.com), Andy Hrycyna, Nathan Sanders, PhD, Veronique Vicard, and Patrick Herron, PhD

[Mystic River Watershed Association](http://mysticriver.org)

This repository contains an analysis of indicator bacteria levels in the Mystic River basin and provides recommendations for the 2014 EPA Grade Assessment.

To run this code, first install the latest versions of [R](http://cran.r-project.org/) and [RStudio](http://www.rstudio.com/).

The document is stored as an R Markdown document: `epa_grade.Rmd`. This file is converted to an HTML webpage using the [rmarkdown](rmarkdown.rstudio.com) and [knitr](http://yihui.name/knitr/) packages.

The analysis requires a set of packages, which can be installed from CRAN:

```r
install.packages(c("dplyr","tidyr","lubridate","knitr","ggplot2","gridExtra","ggmap"))
```

The analysis also uses the [myrwaR](https://github.com/walkerjeffd/myrwaR) package, which can be installed from Github:

```r
install.packages("devtools")
install_github("walkerjeffd/myrwaR")
```

The input data files are stored on Amazon S3, and are automatically downloaded by the R markdown script if they do not exist locally.

These input files were extracted from the MyRWA Water Quality Database using the `load_data.R` script. This script only needs to be re-run if there are changes to the database.
