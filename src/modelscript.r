library(frbs)					# Load the frbs package
method.type <- "%%item_185%%"				# store the method type in a variable
#set the control parameters for the specific method type chosen above (see documentation)
control <- list(num.labels =%%item_193%%, type.mf = "%%item_190%%", type.tnorm = "%%item_213%%", type.snorm = "%%item_221%%", type.implication.func = "%%item_232%%")

allFields<-%%item_1726%%
  scoringFields<-allFields-1
Training <- modelerData[, c(1:allFields)]			# Set the training set to include all fields
Scoring <- modelerData[, c(1:scoringFields)]			# Set the scoring set to exclude the Species field
print (names(modelerData))				# Print the names of All the fields
print (names(Training))				# Print the names of the fields used for Training

modelerModel <- frbs.learn(Training, range.data=NULL, method.type, control)	# Train the predictive model
# range.data=NULL  is because we let the package detect the range automatically

print(modelerModel)				# Print model details
summary(modelerModel)				# Print the summary of details of the model built
