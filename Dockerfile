FROM alpine

COPY ./bin /bin

CMD [ "/bin/app" ]