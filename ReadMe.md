# Getting and Cleaning Data - Course Project

This repository contains the R code and documentation files for the Coursera "Getting and Cleaning Data" course project.

## Overview

The purpose of this project is to demonstrate student's ability to collect, work with, and clean a data set. The goal is to prepare a tidy data set that can be used for later analysis.

## Dataset

The data used in this project is derived from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Files

- `run_analysis.R`: The R script that performs the analysis.
- `CodeBook.md`: A code book that describes the variables, the data, and any transformations or work that was performed to clean up the data.
- `README.md`: This file, which explains the project.

## Analysis Steps

1. **Load necessary packages**: The script loads the `data.table` and `reshape2` packages.
2. **Download and unzip the dataset**: The dataset is downloaded from the provided URL and unzipped.
3. **Load activity labels and features**: Activity labels and features are loaded using `fread`.
4. **Extract mean and standard deviation measurements**: Features that represent mean and standard deviation are extracted.
5. **Load and prepare train and test datasets**: The training and test datasets are loaded and combined with their respective subject and activity data.
6. **Verify dimensions**: The dimensions of the train and test datasets are printed to ensure they have consistent column counts.
7. **Merge datasets**: The train and test datasets are merged.
8. **Use descriptive activity names**: Activity names replace activity codes in the combined dataset.
9. **Label the dataset**: Variable names are updated to be more descriptive.
10. **Create tidy dataset**: A tidy dataset with the average of each variable for each activity and each subject is created and written to a file named `tidyData.txt`.

## Running the Analysis

To run the analysis, source the `run_analysis.R` script in R. The script will perform the following actions:
- Download and unzip the dataset.
- Load and process the data.
- Merge the training and test sets.
- Label the dataset with descriptive variable names.
- Create a tidy dataset and save it as `tidyData.txt`.

```r
source("run_analysis.R")
