FROM owasp/dependency-check

RUN /usr/share/dependency-check/bin/dependency-check.sh --updateonly

CMD ["--help"]
ENTRYPOINT ["/usr/share/dependency-check/bin/dependency-check.sh"]