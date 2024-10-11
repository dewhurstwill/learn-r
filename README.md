# Learning R in RStudio & ggplot2

## Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Install R and RStudio](#install-r-and-rstudio)
4. [Set up RStudio](#set-up-rstudio)
5. [Learn Basic R Syntax](#learn-basic-r-syntax)
6. [Install ggplot2 Package](#install-ggplot2-package)
7. [Create Basic Plots with ggplot2](#create-basic-plots-with-ggplot2)
8. [Customize ggplot2 Plots](#customize-ggplot2-plots)
9. [Additional Resources](#additional-resources)

---

## Introduction
R is a powerful programming language used for data analysis, statistics, and visualization. **ggplot2** is one of R's most popular packages for creating beautiful and informative plots.

In this guide, you'll learn how to set up RStudio, understand basic R syntax, and create visualizations using ggplot2.

---

## Prerequisites
- Basic understanding of programming concepts
- A computer with internet access

---

## Install R and RStudio

1. Download and install R:
   - Visit [CRAN](https://cran.r-project.org/) and download the version suitable for your operating system.
   - Follow the installation instructions.

2. Download and install RStudio:
   - Visit [RStudio](https://www.rstudio.com/products/rstudio/download/) and download the free version.
   - Follow the installation steps.

---

## Set up RStudio

1. Open RStudio.
2. The RStudio interface consists of four panels:
   - **Console**: Where you execute R commands.
   - **Environment**: Displays loaded data and variables.
   - **Files/Plots/Packages/Help**: View plots, manage packages, and access help.
   - **Source**: Where you write and save your R scripts.

---

## Learn Basic R Syntax

1. **Variables**: Assign values using `<-` or `=`.
   ```r
   x <- 5
   y <- 10
   result <- x + y

2. **Data Structures**:

2.1. Vectors: One-dimensional arrays.

```r
vec <- c(1, 2, 3, 4, 5)
```

2.2. Data Frames: Tables of data.

```r
df <- data.frame(
  name = c("Alice", "Bob", "Charlie"),
  age = c(25, 30, 35)
)
```

3. Functions: Execute tasks.
```r
sum(vec)  # Sums up elements in a vector
```

4. Basic plotting
```r
plot(vec)  # Simple base plot
```

---

## Install ggplot2 Package

1. Install ggplot2:

```r
install.packages("ggplot2")
```

2. Load the ggplot2 package:

```r
library(ggplot2)
```

## Create Basic Plots with ggplot2

1. Create a scatter plot using ggplot2:
```r
data(mtcars)  # Load the mtcars dataset
ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point()
```

2. Save the plot
```r
ggsave("scatterplot.png")
```

## Customize ggplot2 Plots

1. Add title and axis labels:
```r
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(
    title = "Weight vs. Miles per Gallon",
    x = "Car Weight",
    y = "Miles per Gallon"
  )
```

2. Change color and size of points:

```r
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "blue", size = 3)
```

3. Add a regression line:
```r
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
```

## Exercises for CSV Import and Graph Creation

### Exercise 1: Import a CSV File and Create a Bar Plot

1. Download a sample CSV file, e.g., sales_data.csv, and save it to your project directory. Example CSV structure:

```csv
product, sales
A, 500
B, 300
C, 400
D, 700
```

2. Use R to read the CSV:

```r
sales_data <- read.csv("sales_data.csv")
```

3. View the data:

```r
head(sales_data)
```

4. Create a bar plot showing sales for each product:

```r
ggplot(temperature_data, aes(x = day, y = temperature)) + 
  geom_line() +
  labs(
    title = "Temperature Over Time",
    x = "Day",
    y = "Temperature (°C)"
  )
```

## Additional Resources

## Additional Resources

- [R basics](https://www.w3schools.com/r/default.asp) — Interactive tutorials and exercises for learning R.
- [R for Data Science](https://r4ds.had.co.nz/) — A comprehensive book to learn data science with R.
- [ggplot2 Documentation](https://ggplot2.tidyverse.org/) — Official documentation for the ggplot2 package.
- [RStudio Cheat Sheets](https://www.rstudio.com/resources/cheatsheets/) — Useful cheat sheets for R programming, ggplot2, and more.
- [DataCamp R Tutorials](https://www.datacamp.com/courses/tech:r) — Interactive tutorials and exercises for learning R.
- [The R Graph Gallery](https://www.r-graph-gallery.com/) — A collection of data visualization examples using R and ggplot2.

