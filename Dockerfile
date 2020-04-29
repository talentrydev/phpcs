FROM php:cli-alpine
RUN apk add git
RUN curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar && \
    install -m 755 phpcs.phar /usr/local/bin/phpcs && \
    rm phpcs.phar
RUN curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar && \
    install -m 755 phpcbf.phar /usr/local/bin/phpcbf && \
    rm phpcbf.phar