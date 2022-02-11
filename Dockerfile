FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends git python3-pip device-tree-compiler build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install -U humanfriendly configparser ruamel.yaml anytree pcpp flask flask_restful pandas

RUN printf '\nexport PATH=$PATH:/root/lopper\nexport PYTHONPATH=/root/lopper' >> /root/.bashrc

RUN cd && \
    git clone https://github.com/devicetree-org/lopper && \
    cd lopper && \
    git checkout -b nrf5340-test 17350a773a73c426a826e32e4e093effc718ecf5
