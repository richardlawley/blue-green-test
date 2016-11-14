FROM node
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
COPY package.json /app/
RUN npm install

COPY . /app

EXPOSE 8080

ENTRYPOINT ["npm", "start"]