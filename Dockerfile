FROM amazon/aws-lambda-nodejs:14
COPY app.js package.json yarn.lock ./
RUN npm install --global yarn
RUN yarn
CMD [ "app.lambdaHandler" ]
