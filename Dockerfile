# Use lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy only requirements first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the app port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]