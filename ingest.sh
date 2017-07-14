#!/bin/bash




# remove copy of file, if it exists
if [ -d "data" ]; then
	rm -rf data
fi
mkdir data

# download latest data from Kaggle-Zillow Prize
# https://www.kaggle.com/c/zillow-prize-1/data
python kaggle_download.py https://www.kaggle.com/c/zillow-prize-1/download/properties_2016.csv.zip
python kaggle_download.py https://www.kaggle.com/c/zillow-prize-1/download/sample_submission.csv.zip
python kaggle_download.py https://www.kaggle.com/c/zillow-prize-1/download/train_2016_v2.csv.zip
python kaggle_download.py https://www.kaggle.com/c/zillow-prize-1/download/zillow_data_dictionary.xlsx.zip

# unzip and remove zip files
unzip properties_2016.csv.zip -d data && rm -rf properties_2016.csv.zip 
unzip sample_submission.csv.zip -d data && rm -rf sample_submission.csv.zip
unzip train_2016_v2.csv.zip -d data && rm -rf train_2016_v2.csv.zip
unzip zillow_data_dictionary.xlsx.zip -d data && rm -rf zillow_data_dictionary.xlsx.zip
