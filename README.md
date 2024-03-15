# Zillow-Home-Value-Index
Test using Zillow Home Value Index data for data cleaning and visualization practice

## Overview

This is a test project. I am using Zillow Home Value Index data (ZHVI) to test out various visualization options at a state and metro level on a Q4 annual basis between 2019 -2023. The data used can be found [here](https://www.zillow.com/research/data/) through Zillow research's Housing Data portal. I will visualize and uncover trends, patterns, and insights from the data (this may be working a little backwards here, but I'm simply playing around with the data, more so for the purposes of testing out visualization tools and practicing documenting my process rather than answering a business question for now).


## What is Zillow Housing research, and what is the Zillow Home Value Index (ZHVI)

*Zillow Home Value Index (ZHVI): A measure of the typical home value and market changes across a given region and housing type. It reflects the typical value for homes in the 35th to 65th percentile range. Available as a smoothed, seasonally adjusted measure and as a raw measure.*

*Zillow publishes top-tier ZHVI ($, typical value for homes within the 65th to 95th percentile range for a given region) and bottom-tier ZHVI ($, typical value for homes within the 5th to 35th percentile range for a given region).*

*Zillow also publishes ZHVI for all single-family residences ($, typical value for all single-family homes in a given region), for condo/coops ($), for all homes with 1, 2, 3, 4 and 5+ bedrooms ($), and the ZHVI per square foot ($, typical value of all homes per square foot calculated by taking the estimated home value for each home in a given region and dividing it by the home’s square footage).*

***Note**: Starting with the January 2023 data release, and for all subsequent releases, the full ZHVI time series has been upgraded to harness the power of the neural Zestimate.*

*More information about what ZHVI is and how it’s calculated is available on [this overview page](https://www.zillow.com/research/methodology-neural-zhvi-32128/). Here’s a handy [ZHVI User Guide](https://www.zillow.com/research/zhvi-user-guide/) for information about properly citing and making calculations with this metric.**

## How it Works

*The Zillow Home Value Index (ZHVI) is designed to capture the value of a typical property across the nation or the neighborhood, not just the homes that sold, and we do so by drawing information from the full distribution of homes in a given region. For a more in-depth explanation of the ZHVI methodology, click [here.](https://www.zillow.com/research/methodology-neural-zhvi-32128/)*

## The Data

The raw, downloadable data includes the geographic information and the Zillow Home Value Index reporting date (hereafter referred to as *ZHVI*) going back historically to 2000, where the ZHVI is reported on monhtly basis for the each geographical region. Each data set used was exported by the number of bedrooms (1, 2,... up to 5+), so I started this project with five separate data sets and I chose to drill down to the metro geographical level. The raw, downloadable data sets are in a wide format.

## Data Transformation and Tools Used

**Excel:** The data sets were trimmed down to only include the last month's ZHVI of each year from 2019 through 2023 in Excel, as it wasn't necessary to analyze anything beyond a five-year scope for the purpose of the test project this project. The raw data set had column headers that began with numbers (dates for the ZHVIs), so I altered them to make things easier to upload to PgAdmin. It was quicker to do it in Excel vs changing the column headers when uploading to PgAdmin.

**SQL:** A majority of the data transformation was done using SQL in PgAdmin. The script is included in this repository and explains what steps were taken to transform the data to prepare it for visualization in Tableau. Since I used Tableau Public, I wasn't able to connect Tableau to a SQL database, so instead I exported the data into a .csv file to upload to Tableau. 

**Tableau:** Performed couple of additional calculations with the combined data set in Tableau to create long data. The data source includes metros from all states, but the visualizations and dashboard are filtered to only show select states and their various metros. The dashboard isn't intended to look super aesthetically pleasing for now, rather, I just wanted to publish the various types of visualizations that would reveal some insights about the housing market (depending on the context and hypothetical business question).

## General, High-Level Findings

The following states were visualized (East and West coast, plus Colorado):  
\- CA  
\* CO  
\* CT  
\* DE  
\* MA  
\* MD  
\* ME  
\* NH  
\* NJ  
\* NY  
\* OR  
\* RI  
\* VA  
\* VT  
\* WA 
