# use base iamge form dockerhub
FROM node:25-alpine3.21

# set working directory
WORKDIR /app

# copy package files
COPY package*.json ./

# install dependencies 
RUN npm install

# copy the rest of appication files
COPY . .

#export port 
EXPOSE 5173

#start portfolio
CMD [ "npm" , "run", "dev" ]