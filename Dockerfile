# Menggunakan Red Hat Universal Base Image (UBI) untuk keamanan
FROM registry.access.redhat.com/ubi8/nodejs-18:latest

# Set working directory
WORKDIR /opt/app-root/src

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Ekspos port aplikasi
EXPOSE 8080

# Jalankan aplikasi
CMD ["npm", "start"]