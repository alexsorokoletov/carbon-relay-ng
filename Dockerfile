FROM gliderlabs/alpine
ADD carbon-relay-ng /bin/
VOLUME /conf
ADD examples/carbon-relay-ng-docker.ini /conf/carbon-relay-ng.ini
RUN mkdir /var/spool/carbon-relay-ng
ENTRYPOINT ["/bin/carbon-relay-ng"]
CMD ["/conf/carbon-relay-ng.ini"]
