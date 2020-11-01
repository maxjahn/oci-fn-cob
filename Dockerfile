FROM alpine:latest

WORKDIR /opt

RUN apk add tar libaio libnsl libc6-compat autoconf make g++ gmp-dev db-dev
RUN wget https://sourceforge.net/projects/gnucobol/files/gnucobol/3.1/gnucobol-3.1-rc1.tar.gz/download -O gnucobol-3.1-rc1.tar.gz && \
    tar xvfz gnucobol-3.1-rc1.tar.gz && cd gnucobol-3.1-rc1 && ./configure && make && make install && cd ..

# install fn hotwrap 
COPY --from=fnproject/hotwrap:latest  /hotwrap /hotwrap 
COPY ./src .
RUN cobc -x func.cob

CMD ./func   
ENTRYPOINT ["/hotwrap"]
