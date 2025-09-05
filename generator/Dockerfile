# Base image
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the generator code
COPY . .

# Expose optional port if needed (e.g., API)
EXPOSE 5000

# Command to run generator
CMD ["python", "generator.py"]
