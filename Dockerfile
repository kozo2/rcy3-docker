FROM bioconductor/release_core2
MAINTAINER Kozo Nishida (kozo.nishida@gmail.com)

RUN R -e 'BiocManager::install("RCy3")' && \
    apt-get update && apt-get install -y java-common && \
    wget https://d3pxv6yz143wms.cloudfront.net/8.232.09.1/java-1.8.0-amazon-corretto-jdk_8.232.09-1_amd64.deb && \
    dpkg -i java-1.8.0-amazon-corretto-jdk_8.232.09-1_amd64.deb && \
    rm java-1.8.0-amazon-corretto-jdk_8.232.09-1_amd64.deb && \
    wget https://github.com/cytoscape/cytoscape/releases/download/3.7.2/cytoscape-3.7.2.tar.gz && \
    tar xf cytoscape-3.7.2.tar.gz && rm cytoscape-3.7.2.tar.gz && \
    chown -R rstudio:rstudio /cytoscape-unix-3.7.2
