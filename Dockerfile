# Use an official Python image as a base
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the port the application will run on
EXPOSE 5000

# Run the command to start the development server when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]