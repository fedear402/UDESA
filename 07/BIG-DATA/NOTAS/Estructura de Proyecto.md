Limpieza de datos: 
• Muestras 
• Eliminar variables 
• Reshape

Análisis Descriptivo:
• Tablas 
• Histogramas 
• PCA, Clusters, …

Modelos de Predicción
• Training-Testing datasets 
• Ajuste de modelos


---

## 1. Problem Framing

Perhaps the point of biggest leverage in a predictive modeling problem is the framing of the problem.

This is the selection of the type of xproblem, e.g. regression or classification, and perhaps the structure and types of the inputs and outputs for the problem.

The framing of the problem is not always obvious. For newcomers to a domain, it may require significant exploration of the observations in the domain.

For domain experts that may be stuck seeing the issues from a conventional perspective, they too may benefit from considering the data from multiple perspectives.

Statistical methods that can aid in the exploration of the data during the framing of a problem include:

- **Exploratory Data Analysis**. Summarization and visualization in order to explore ad hoc views of the data.
- **Data Mining**. Automatic discovery of structured relationships and patterns in the data.

## 2. Data Understanding

Data understanding means having an intimate grasp of both the distributions of variables and the relationships between variables.

Some of this knowledge may come from domain expertise, or require domain expertise in order to interpret. Nevertheless, both experts and novices to a field of study will benefit from actually handeling real observations form the domain.

Two large branches of statistical methods are used to aid in understanding data; they are:

- **Summary Statistics**. Methods used to summarize the distribution and relationships between variables using statistical quantities.
- **Data Visualization**. Methods used to summarize the distribution and relationships between variables using visualizations such as charts, plots, and graphs.

## 3. Data Cleaning

Observations from a domain are often not pristine.

Although the data is digital, it may be subjected to processes that can damage the fidelity of the data, and in turn any downstream processes or models that make use of the data.

Some examples include:

- Data corruption.
- Data errors.
- Data loss.

The process of identifying and repairing issues with the data is called data cleaning

Statistical methods are used for data cleaning; for example:

- **Outlier detection**. Methods for identifying observations that are far from the expected value in a distribution.
- **Imputation**. Methods for repairing or filling in corrupt or missing values in observations.

## 4. Data Selection

Not all observations or all variables may be relevant when modeling.

The process of reducing the scope of data to those elements that are most useful for making predictions is called data selection.

Two types of statistical methods that are used for data selection include:

- **Data Sample**. Methods to systematically create smaller representative samples from larger datasets.
- **Feature Selection**. Methods to automatically identify those variables that are most relevant to the outcome variable.

## 5. Data Preparation

Data can often not be used directly for modeling.

Some transformation is often required in order to change the shape or structure of the data to make it more suitable for the chosen framing of the problem or learning algorithms.

Data preparation is performed using statistical methods. Some common examples include:

- **Scaling**. Methods such as standardization and normalization.
- **Encoding**. Methods such as integer encoding and one hot encoding.
- **Transforms**. Methods such as power transforms like the Box-Cox method.

## 6. Model Evaluation

A crucial part of a predictive modeling problem is evaluating a learning method.

This often requires the estimation of the skill of the model when making predictions on data not seen during the training of the model.

Generally, the planning of this process of training and evaluating a predictive model is called experimental design. This is a whole subfield of statistical methods.

- **Experimental Design**. Methods to design systematic experiments to compare the effect of independent variables on an outcome, such as the choice of a machine learning algorithm on prediction accuracy.

As part of implementing an experimental design, methods are used to resample a dataset in order to make economic use of available data in order to estimate the skill of the model. These two represent a subfield of statistical methods.

- **Resampling Methods**. Methods for systematically splitting a dataset into subsets for the purposes of training and evaluating a predictive model.

## 7. Model Configuration

A given machine learning algorithm often has a suite of hyperparameters that allow the learning method to be tailored to a specific problem.

The configuration of the hyperparameters is often empirical in nature, rather than analytical, requiring large suites of experiments in order to evaluate the effect of different hyperparameter values on the skill of the model.

The interpretation and comparison of the results between different hyperparameter configurations is made using one of two subfields of statistics, namely:

- **Statistical Hypothesis Tests**. Methods that quantify the likelihood of observing the result given an assumption or expectation about the result (presented using critical values and p-values).
- [**Estimation Statistics**](https://machinelearningmastery.com/estimation-statistics-for-machine-learning/). Methods that quantify the uncertainty of a result using confidence intervals.

## 8. Model Selection

One among many machine learning algorithms may be appropriate for a given predictive modeling problem.

The process of selecting one method as the solution is called model selection.

This may involve a suite of criteria both from stakeholders in the project and the careful interpretation of the estimated skill of the methods evaluated for the problem.

As with model configuration, two classes of statistical methods can be used to interpret the estimated skill of different models for the purposes of model selection. They are:

- **Statistical Hypothesis Tests**. Methods that quantify the likelihood of observing the result given an assumption or expectation about the result (presented using critical values and p-values).  
    **Estimation Statistics**. Methods that quantify the uncertainty of a result using confidence intervals.

## 9. Model Presentation

Once a final model has been trained, it can be presented to stakeholders prior to being used or deployed to make actual predictions on real data.

A part of presenting a final model involves presenting the estimated skill of the model.

Methods from the field of estimation statistics can be used to quantify the uncertainty in the estimated skill of the machine learning model through the use of tolerance intervals and confidence intervals.

- **Estimation Statistics**. Methods that quantify the uncertainty in the skill of a model via confidence intervals.

## 10. Model Predictions

Finally, it will come time to start using a final model to make predictions for new data where we do not know the real outcome.

As part of making predictions, it is important to quantify the confidence of the prediction.

Just like with the process of model presentation, we can use methods from the field of estimation statistics to quantify this uncertainty, such as confidence intervals and prediction intervals.

- **Estimation Statistics**. Methods that quantify the uncertainty for a prediction via prediction intervals.