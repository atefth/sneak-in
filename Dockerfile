# Use an official Ruby runtime as a parent image
FROM ruby:2.3

# Set the working directory to ./
WORKDIR ./

# Copy the current directory contents into the container at ./
ADD . ./

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV RAILS_ENV production
ENV db_adapter 'mysql2'
ENV db_pool '5'
ENV db_port '3306'
ENV db_username 'root'
ENV db_password 'root'
ENV db_name 'sneak_in_production'

# Install any needed packages specified in requirements.txt
RUN bundle install

# Run rails -s when the container launches
CMD ["rails", "-s"]
