import pandas as pd
import numpy as np

# Load the original dataset
df = pd.read_csv("qdataset_indep_2-50q.csv")


# Function to create a synthetic sub-dataset
def create_sub_dataset(df, target_depth, tolerance, num_circuits):
    subset = pd.DataFrame()
    current_depth = 0
    while (
        current_depth < target_depth - tolerance
        or current_depth > target_depth + tolerance
    ):
        subset = df.sample(n=num_circuits)
        current_depth = subset["original_depth"].sum()
    return subset, current_depth


# Adjustable parameters
num_subsets = 100  # Number of subsets to create
num_circuits = 60  # Number of circuits in each subset
average_depth = (
    df["original_depth"].sum() // len(df) * num_circuits
)  # Average total depth for 'num_circuits' circuits
tolerance = average_depth * 0.1  # 10% tolerance for depth similarity

# Generate synthetic sub-datasets
all_subsets = []
for i in range(num_subsets):
    subset, current_depth = create_sub_dataset(
        df, average_depth, tolerance, num_circuits
    )
    subset["subset"] = i + 1
    all_subsets.append(subset)

    # Print progress and average depth
    print(
        f"Generated subset {i+1}/{num_subsets} with average depth {current_depth/num_circuits:.2f}"
    )

# Combine and save
final_df = pd.concat(all_subsets)

# Move the 'subset' column to the first position
cols = ["subset"] + [col for col in final_df if col != "subset"]
final_df = final_df[cols]

# Save the modified DataFrame to a new CSV file
final_df.to_csv(
    "synds_" + str(num_subsets) + "_sub_" + str(num_circuits) + ".csv",
    index=False,
)
