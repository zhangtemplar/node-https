FROM node
MAINTAINER zhangtemplar

# Prepare app directory
RUN mkdir -p /usr/src/app
ADD . /usr/src/app

# Install dependencies
WORKDIR /usr/src/app
RUN npm install

# Expose the app port
EXPOSE 80 443

# Start the app
CMD npm start
