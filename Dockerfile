FROM bioconductor/release_core2
MAINTAINER Kozo Nishida (kozo.nishida@gmail.com)

RUN R -e 'BiocManager::install("RCy3")'
RUN apt-get update && apt-get install -y java-common
RUN wget https://d3pxv6yz143wms.cloudfront.net/8.232.09.1/java-1.8.0-amazon-corretto-jdk_8.232.09-1_amd64.deb
RUN wget https://github.com/cytoscape/cytoscape/releases/download/3.7.2/cytoscape-3.7.2.tar.gz
RUN dpkg -i java-1.8.0-amazon-corretto-jdk_8.232.09-1_amd64.deb
RUN tar xf cytoscape-3.7.2.tar.gz && rm java-1.8.0-amazon-corretto-jdk_8.232.09-1_amd64.deb cytoscape-3.7.2.tar.gz
