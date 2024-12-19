FROM node:23

LABEL maintainer = "Rain120 <1085131904@qq.com>"

# Create app directory
WORKDIR /

COPY package.json .

RUN yarn install

COPY . .

EXPOSE 3200

ENTRYPOINT ["npm", "run"]

CMD ["start"]
