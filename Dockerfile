FROM bioconductor/release_core2
MAINTAINER Kozo Nishida (kozo.nishida@gmail.com)

RUN R -e 'BiocManager::install("RCy3")' && \
    apt-get update && apt-get install -y default-jdk && \
    wget https://github.com/cytoscape/cytoscape/releases/download/3.7.2/cytoscape-3.7.2.tar.gz && \
    tar xf cytoscape-3.7.2.tar.gz && rm cytoscape-3.7.2.tar.gz && \
    chown -R rstudio:rstudio /cytoscape-unix-3.7.2
