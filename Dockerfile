FROM olegkunitsyn/gnucobol:3.1-dev

COPY --from=fnproject/hotwrap:latest  /hotwrap /hotwrap 
COPY ./src .
RUN cobc -x func.cob

CMD ./func   
ENTRYPOINT ["/hotwrap"]
