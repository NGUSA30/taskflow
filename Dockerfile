# Use official Node 21 image
FROM node:21

# Set working directory
WORKDIR /app

# Install Yarn globally
RUN npm install -g yarn

# Copy dependency files and install dependencies with Yarn
COPY package.json yarn.lock ./
RUN yarn install

# Copy the entire source code
COPY . .

# Expose app port
EXPOSE 3000

# Start Next.js dev server
CMD ["yarn", "dev"]
