import csv
import ast
import pandas as pd


class Dataset:
    def __init__(self, filename):
        self.data = {}
        # self.load_data(filename)
        self.filename = filename
        

    # Load data from csv file using pandas
    def load_data_pd(self, filename):
        self.df = pd.read_csv(filename)

        # Ensure 'subset_id' is the first column
        if "subset" in self.df.columns:
            cols = ["subset"] + [col for col in self.df.columns if col != "subset"]
            self.df = self.df[cols]

        for index, row in self.df.iterrows():
            # Convert string representation of a dictionary to an actual dictionary
            for col in self.df.columns:
                if isinstance(row[col], str) and "{" in row[col] and "}" in row[col]:
                    row[col] = ast.literal_eval(row[col])

            # Form nested dictionary structure
            formatted_data = {
                "algorithm": row["algorithm"],
                "original": {
                    "width": int(row["original_width"]),
                    "depth": int(row["original_depth"]),
                    "gates": row["original_gates"],
                },
                "ibmq7": {
                    "width": int(row["ibmq7_width"]),
                    "depth": int(row["ibmq7_depth"]),
                    "gates": row["ibmq7_gates"],
                },
                "ibmq16": {
                    "width": int(row["ibmq16_width"]),
                    "depth": int(row["ibmq16_depth"]),
                    "gates": row["ibmq16_gates"],
                },
                "ibmq27": {
                    "width": int(row["ibmq27_width"]),
                    "depth": int(row["ibmq27_depth"]),
                    "gates": row["ibmq27_gates"],
                },
                "ibmq127": {
                    "width": int(row["ibmq127_width"]),
                    "depth": int(row["ibmq127_depth"]),
                    "gates": row["ibmq127_gates"],
                },
                # "arrival_time": row["arrival_time"],
            }

            # Index by algorithm and original_width
            key = (row["subset"], row["algorithm"], int(row["original_width"]))
            self.data[key] = formatted_data
            
    # Load data from csv file using pandas
    def load_test_data_pd(self, filename):
        self.df = pd.read_csv(filename)

        # Ensure 'subset_id' is the first column
        if "subset" in self.df.columns:
            cols = ["subset"] + [col for col in self.df.columns if col != "subset"]
            self.df = self.df[cols]

        for index, row in self.df.iterrows():
            # Convert string representation of a dictionary to an actual dictionary
            for col in self.df.columns:
                if isinstance(row[col], str) and "{" in row[col] and "}" in row[col]:
                    row[col] = ast.literal_eval(row[col])

            # Form nested dictionary structure
            formatted_data = {
                "algorithm": row["algorithm"],
                "original": {
                    "width": int(row["original_width"]),
                    "depth": int(row["original_depth"]),
                    "gates": row["original_gates"],
                },
                "ibmq7": {
                    "width": int(row["ibmq7_width"]),
                    "depth": int(row["ibmq7_depth"]),
                    "gates": row["ibmq7_gates"],
                },
                "ibmq16": {
                    "width": int(row["ibmq16_width"]),
                    "depth": int(row["ibmq16_depth"]),
                    "gates": row["ibmq16_gates"],
                },
                "ibmq27": {
                    "width": int(row["ibmq27_width"]),
                    "depth": int(row["ibmq27_depth"]),
                    "gates": row["ibmq27_gates"],
                },
                "ibmq127": {
                    "width": int(row["ibmq127_width"]),
                    "depth": int(row["ibmq127_depth"]),
                    "gates": row["ibmq127_gates"],
                },
                "arrival_time": row["arrival_time"],
            }

            # Index by algorithm and original_width
            key = (row["subset"], row["algorithm"], int(row["original_width"]))
            self.data[key] = formatted_data

    def get_subset_data(self, subset_id):
        # Filter data by subset_id
        self.load_data_pd(self.filename)
        return {key: value for key, value in self.data.items() if key[0] == subset_id}
    
    def get_test_subset_data(self, subset_id):
        # Filter data by subset_id
        self.load_test_data_pd(self.filename)
        return {key: value for key, value in self.data.items() if key[0] == subset_id}
