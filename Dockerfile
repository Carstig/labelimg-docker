FROM carstig/pyqt5

LABEL maintainer="carstig@yahoo.de"

WORKDIR /home/docker
RUN git clone --depth 1 https://github.com/tzutalin/labelImg.git
WORKDIR /home/docker/labelImg
RUN pip install -r requirements/requirements-linux-python3.txt
RUN make qt5py3

CMD ["echo", "start me with: python labelImg.py"]

