FROM ubuntu:latest

RUN apt update && apt install -y \
    wget \
    libnss3 \
    libxext6 \
    libxrender1 \
    libxtst6 \
    ca-certificates \
    net-tools \
    zip

WORKDIR /opt

COPY xampp-linux-x64-8.2.12-0-installer.run .

# installer XAMPP
RUN  chmod +x ./xampp-linux-x64-8.2.12-0-installer.run

# Installer XAMPP en mode silencieux
RUN ./xampp-linux-x64-8.2.12-0-installer.run
RUN rm  xampp-linux-x64-8.2.12-0-installer.run

EXPOSE 80 443

CMD ["/opt/lampp/lampp", "start"]
