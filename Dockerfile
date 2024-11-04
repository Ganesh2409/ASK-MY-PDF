FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy your application code
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run your Streamlit app
CMD ["streamlit", "run", "your_app.py"]