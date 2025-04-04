# use the official node.js image
FROM node:18-alpine

#setup the working directoryin container
WORKDIR /

# copie the package json & dependecies 
COPY package*.json ./

# copy all the app files
COPY . .

# expose the port the app is running on
EXPOSE 3000

#run app with command
CMD ["node", "app.js"]