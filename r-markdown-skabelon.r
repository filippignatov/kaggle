---
title: "R Markdown Mastery"
author: "Data Scientist"
date: "`r Sys.Date()`"
output:
  html_document:
    number_sections: true
    toc: true
    theme: cosmo
---

# 1. Introduktion
Dette script er genereret til at demonstrere **R Markdown** workflowet på Kaggle-platformen. Formålet er at opnå "R Markdown Coder" badget gennem metodisk dokumentation og visualisering.

# 2. Opsætning og Biblioteker
Her indlæser vi de nødvendige værktøjer. Vi bruger **tidyverse** til effektiv datamanipulation.

```{r load_libraries, message=FALSE, warning=FALSE}
library(tidyverse)

