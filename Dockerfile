FROM dancinllama/dockerdx
RUN git clone https://github.com/wadewegner/sfdx-waw-plugin.git && \
    curl -sL https://deb.nodesource.com/setup | sudo bash - && \
    apt-get install -yq nodejs build-essential && \
    npm install && \
    sfdx plugins:link . && \
    sfdx plugins:install sfdx-waw-plugin
    
