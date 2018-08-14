FROM alpine:latest

RUN apk -Uuv add groff less python py-pip 
RUN pip install awscli
RUN apk --purge -v del py-pip 
RUN	rm /var/cache/apk/*

ENTRYPOINT ["aws"]
