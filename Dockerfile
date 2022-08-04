FROM ghcr.io/hyperk/hkpilot:latest

# COPY ../hkpilot /usr/local/hk/hkpilot

# WORKDIR /usr/local/hk/hkpilot

# SHELL ["/bin/bash", "-c"]

# RUN git config --global url."https://github.com/".insteadOf git@github.com: &&\
    # git config --global url."https://".insteadOf git://

# RUN python3 setup.py install && \
    # . setup.sh &&\
    # hkp --version

COPY . /usr/local/hk/hk-meta-externals

WORKDIR /usr/local/hk
RUN . /usr/local/hk/hkpilot/setup.sh &&\
    hkp install -r hk-meta-externals
