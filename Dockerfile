FROM mageai/mageai:latest

# Install ping and telnet
RUN apt-get update && apt-get install -y \
    iputils-ping \
    inetutils-telnet \
    postgresql-client && \
    rm -rf /var/lib/apt/lists/*

ARG PROJECT_NAME
ARG USER_CODE_PATH=/home/src/${PROJECT_NAME}

# Note: this overwrites the requirements.txt file in your new project on first run. 
# You can delete this line for the second run :) 
COPY requirements.txt ${USER_CODE_PATH}requirements.txt 

RUN pip3 install -r ${USER_CODE_PATH}requirements.txt