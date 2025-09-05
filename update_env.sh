#!/bin/bash
# Update virtual environment dependencies

ENV_NAME="bar_sim_env"

if [ ! -d "$ENV_NAME" ]; then
  echo "Virtual environment $ENV_NAME not found. Run setup_env.sh first."
  exit 1
fi

echo "Activating virtual environment"
source $ENV_NAME/bin/activate

echo "Upgrading pip"
pip install --upgrade pip

echo "Updating dependencies from requirements.txt"
pip install --upgrade -r requirements.txt

echo "Environment updated."
