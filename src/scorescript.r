library(frbs)  

print(modelerData[, c(%%item_934%%)]	
      
      
      # Load the frbs package
      method.type <- "%%item_185%%"				# store the method type in a variable
      #set the control parameters for the specific method type chosen above (see documentation)
      #control <- list(range.data=NULL, method.type, num.labels =%%item_193%% , type.mf = "%%item_190%%", type.tnorm = "%%item_213%%", type.snorm = "%%item_221%%", type.implication.func ="%%item_232%%") 
      
      allFields<-%%item_1726%%
        scoringFields<-allFields-1
      Training <- modelerData[, c(1:allFields)]			# Set the training set to include all fields
      Scoring <- modelerData[, c(1:scoringFields)]			# Set the scoring set to exclude the Species field
      print (names(modelerData))				# Print the names of All the fields
      print (names(Training))				# Print the names of the fields used for Training
      print (names(Scoring))				# Print the names of the fields used for Scoring
      
      FTarget <- predict(modelerModel, Scoring)			# Use the model to predict Species values using the Scoring dataset
      
      modelerData<-cbind(modelerData,FTarget)			# Append the predicted values to the R data frame
      print(head(modelerData, 3))				# Print the first 3 rows of the dataset for debugging purposes
      # Format the new field with the predicted values to fit the Modeler data model
      predicted<-c(fieldName="$F-Species",fieldLabel="",fieldStorage="integer",fieldMeasure="",fieldFormat="",fieldRole="")	
      modelerDataModel<-data.frame(modelerDataModel,predicted)		# Append the new field to the Modeler data model
      print(modelerDataModel)	
      