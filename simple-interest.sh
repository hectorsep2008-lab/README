#!/bin/bash

echo "--- Simple Interest Calculator ---"
read -p "Enter the principal amount (P): " principal
read -p "Enter the annual interest rate in % (R): " rate
read -p "Enter the time period in years (T): " time
interest=$(echo "scale=2; $principal * ($rate / 100) * $time" | bc)
total_amount=$(echo "scale=2; $principal + $interest" | bc)
echo "----------------------------------"
echo "Calculated Simple Interest: \$$interest"
echo "Total Accumulated Amount: \$$total_amount"
