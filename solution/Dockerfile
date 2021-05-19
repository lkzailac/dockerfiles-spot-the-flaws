# Use the most-specific base image and version tag
FROM node:10-alpine

# Change Directories with the proper command
WORKDIR /app 

# Optimize layer caching by copying files as late in the process as possible
COPY . /app

# Install dependencies
RUN npm install

# Run with the correct syntax
CMD ["npm", "start"]