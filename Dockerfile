FROM image-registry.openshift-image-registry.svc:5000/openshift/nodejs:18-ubi8

WORKDIR /opt/app-root/src

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 8080

CMD ["npm", "start"]