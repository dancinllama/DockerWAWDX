FROM dancinllama/dockerdx
RUN git clone https://github.com/wadewegner/sfdx-waw-plugin.git && \
    apt-get install curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -yq nodejs build-essential && \
    npm install && \
    sfdx plugins:link . && \
    sfdx plugins:install sfdx-waw-plugin
    
