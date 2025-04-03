# Set the working directory in the container
WORKDIR /app
# Copy the current directory contents (including app.py) into the container
COPY . /app
# Install dependencies
RUN pip install --no-cache-dir flask
# Expose the port that Flask will run on
EXPOSE 5000
# Set the environment variable for Flask to run in production mode
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
# Command to run the Flask app
CMD ["flask", "run"]
