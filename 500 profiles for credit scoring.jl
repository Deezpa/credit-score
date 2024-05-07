500 profiles for credit scoring

# to create a dataset with 500 profiles for credit scoring
## dataset characteristics and the information 
### Dataset Attributes
 ####   1. Profile_ID: A unique identifier for each profile.
 ####   2. Age: The age of the individual.
 ####   3. Employment_Status: Categorical values including Employed, Self-employed, Unemployed, Student.
 ####   4. Residential_Stability: Measured in years at the current address.
 ####   5. Bank_Account_Tenure: Duration (in years) of having a bank account.
 ####   6. Utility_Payment_History: Categorical, e.g., Consistent, Inconsistent, New.
 ####   7.Rent_Payment_History: Categorical, e.g., Consistent, Inconsistent, New.
 ####   8. Telecommunications_Payment_History: Categorical, e.g., Consistent, Inconsistent, New.
 ####   9. Educational_Background: Highest level of education, e.g., High School, Bachelor's, Master's, PhD.
 ####   10. Online_Shopping_Behavior: Frequency of online transactions, e.g., None, Occasional, Frequent.
 ####   11. Social_Media_Footprint: Activity level on social media, e.g., Low, Medium, High.
 ####   12. Gig_Economy_Participation: Involvement level in gig work, e.g., None, Part-Time, Full-Time.
#
#
#
### Generation Approach
#### Diversity and Realism: Ensure that generated data reflects realistic distributions and variations to mimic real-world scenarios.
#### Data Anonymization: Apply techniques to maintain privacy and compliance with data protection regulations.
#### Synthetic Data Generation: Utilize Python libraries such as pandas for data manipulation and faker for generating synthetic data.
#
#
### Python Code to Generate the Dataset
import pandas as pd
import numpy as np
from faker import Faker

fake = Faker()

# Define the number of profiles
num_profiles = 500

# Generate synthetic data
data = {
    "Profile_ID": np.arange(1, num_profiles + 1),
    "Age": np.random.randint(18, 65, size=num_profiles),
    "Employment_Status": np.random.choice(["Employed", "Self-employed", "Unemployed", "Student"], size=num_profiles),
    "Residential_Stability": np.random.randint(0, 30, size=num_profiles),
    "Bank_Account_Tenure": np.random.randint(0, 30, size=num_profiles),
    "Utility_Payment_History": np.random.choice(["Consistent", "Inconsistent", "New"], size=num_profiles),
    "Rent_Payment_History": np.random.choice(["Consistent", "Inconsistent", "New"], size=num_profiles),
    "Telecommunications_Payment_History": np.random.choice(["Consistent", "Inconsistent", "New"], size=num_profiles),
    "Educational_Background": np.random.choice(["High School", "Bachelor's", "Master's", "PhD"], size=num_profiles),
    "Online_Shopping_Behavior": np.random.choice(["None", "Occasional", "Frequent"], size=num_profiles),
    "Social_Media_Footprint": np.random.choice(["Low", "Medium", "High"], size=num_profiles),
    "Gig_Economy_Participation": np.random.choice(["None", "Part-Time", "Full-Time"], size=num_profiles)
}

df = pd.DataFrame(data)

# Anonymizing the Profile_ID
df['Profile_ID'] = df['Profile_ID'].apply(lambda x: hash("Profile_" + str(x)) % 1000000)

# Display the first few rows of the dataframe to verify
print(df.head())

#### This script will generate a dataset of 500 profiles with diverse and realistic data, maintaining compliance with ethical standards and privacy considerations.
#### to reflect realistic and diverse consumer scenarios