FROM dancinllama/dockerdx
RUN git clone https://github.com/wadewegner/sfdx-waw-plugin.git && \
    npm install && \
    sfdx plugins:link . && \
    sfdx plugins:install sfdx-waw-plugin
    
