# Get_Clean_Data_Assignment
This assignment takes several input files and outputs a single, tidy file, **tidydata.txt**

The input files represent observations collected from data collected from smartphone accelerometers in relation to 30 users, undertaking six different activity types.

Steps undertaken in the code, *run_analysis.R*, are as follows:
* Load the training and test data, and combine them 
* Load variable names and activity names
* Identify mean and standard deviation variables and discard other variables
* Rename retained variables to add clarity
* Update the data file to include activity names, replacing the activity codes
* Generate means for each of the retained variables
* Write the output to a tidy text file, *tidydata.txt*

Variable descriptions in the *tidydata.txt* file are included in *codebook.md*
