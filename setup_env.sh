#!/bin/bash
# Setup Python virtual environment

# Exit on error
set -e

ENV_NAME=".bar_sim_env"

echo "Creating Python virtual environment: $ENV_NAME"
python3 -m venv $ENV_NAME

echo "Activating virtual environment"
source $ENV_NAME/bin/activate

echo "Upgrading pip"
pip install --upgrade pip

echo "Installing dependencies from requirements.txt"
pip install -r requirements.txt

echo "Virtual environment setup complete."
echo "To activate: source $ENV_NAME/bin/activate"
