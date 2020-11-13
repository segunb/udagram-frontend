# Use NodeJS base image
FROM node:13.14.0

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install -g ionic
RUN npm install

# Copy app source
COPY . .

# Bind the port that the image will run on
EXPOSE 8100
EXPOSE 4200

# Define the Docker image's behavior at runtime
CMD ["ionic", "serve"]
