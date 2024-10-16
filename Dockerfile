# Use an official Python runtime as a parent image
FROM python:3.12-slim

ENV PYTHONBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
ADD . /app

# Install Django directly
RUN pip install django

EXPOSE 8000

# Run migrations before starting the server
CMD ["python", "manage.py", "migrate"]

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]



