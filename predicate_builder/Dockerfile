FROM ubuntu:22.04

EXPOSE 8080/tcp

RUN apt update && apt upgrade -y
RUN apt install curl -y
RUN apt install git -y
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN curl --proto '=https' --tlsv1.2 -sSf https://install.fuel.network/fuelup-init.sh | sh -s -- --no-modify-path

ENV PATH="/root/.cargo/bin:/root/.fuelup/bin:${PATH}"

RUN fuelup self update
RUN fuelup default beta-3

RUN apt install python3 -y
RUN apt install python3-pip -y

# Set the working directory in the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN pip3 install -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY main.py .
COPY resources ./resources

# Specify the command to run on container start
CMD [ "python3", "./main.py" ]
