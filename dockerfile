# Use the official Node.js image as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Build the React application
RUN npm run build



# Install serve globally
RUN npm install -g serve

# Command to run the app
CMD ["serve", "-s", "build"]

# Expose port 80
EXPOSE 80
