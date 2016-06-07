FROM alpine
RUN apk --update --no-progress add nodejs
ENV APPDIR /APP

WORKDIR ${APP}
COPY simpleapp.js simpleapp.js
COPY package.json package.json
RUN npm install 
CMD ["node","simpleapp.js","3000"]
EXPOSE 3000

