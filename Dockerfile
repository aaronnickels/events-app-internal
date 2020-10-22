# Use Google base image for NodeJS
FROM launcher.gcr.io/google/nodejs

# Copy application code.
COPY . /events-app-internal/

# Change the working directory
WORKDIR /events-app-internal

# Install dependencies.
RUN npm install

# Start the Express app
CMD ["node", "server.js"]
