FROM opensciencegrid/osgvo-ubuntu-xenial

# install julia and packages 
FROM julia:1.4.1

# install base packages
COPY install.jl /opt
RUN /opt/julia-1.4.1/bin/julia /opt/install.jl && \
    rm -f /opt/install.jl && \
    find /opt/julia-1.4.1/share/julia/compiled/ -perm 600 -exec chmod 777 {} \;

