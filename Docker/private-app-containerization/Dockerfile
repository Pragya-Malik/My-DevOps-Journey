  DOCKER FILE:
  

FROM node:18-alpine

# Folder

WORKDIR /app

# Copy [Source and Destination]

COPY package*.json ./

# Install deps [npm] build time command

RUN  npm ci

# Copy everything

COPY . .

#ENV

ENV NODE_ENV=production

# Run

RUN npm run build

# Indicate the port

EXPOSE 3000

# Default command that runs when the container starts [CMD:- runtime]

CMD ["npm","start"]
