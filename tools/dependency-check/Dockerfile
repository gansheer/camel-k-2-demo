FROM owasp/dependency-check

RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly

RUN chmod -R 777 /usr/share/dependency-check/data

CMD ["--help"]
ENTRYPOINT ["/usr/share/dependency-check/bin/dependency-check.sh"]