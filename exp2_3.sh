#!/bin/bash

# Shell script to calculate Gross Salary of an employee

# Prompt the user to enter basic salary
echo "Enter the Basic Salary:"
read basic_salary

# Define HRA and DA percentages
HRA_PERCENTAGE=10
DA_PERCENTAGE=15

# Calculate HRA and DA
hra=$(echo "scale=2; $basic_salary * $HRA_PERCENTAGE / 100" | bc)
da=$(echo "scale=2; $basic_salary * $DA_PERCENTAGE / 100" | bc)

# Calculate Gross Salary
gross_salary=$(echo "scale=2; $basic_salary + $hra + $da" | bc)

# Output the results
echo "Basic Salary: $basic_salary"
echo "HRA (10%): $hra"
echo "DA (15%): $da"
echo "Gross Salary: $gross_salary"

