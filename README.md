# PHP Code Sniffer docker image

Docker image containing [squizlabss/PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer)

# Usage

### Scan all php files in current directory (using PSR2 standard and ignoring vendor dependencies)

```
docker run --rm -v $(pwd):/mnt/ --workdir=/mnt  talentrydev/phpcs phpcs --standard=PSR2 --extensions=php --ignore=*/vendor/* .
```

### Scan only files staged by git (also using PSR2 standard)

```
docker run --rm -v $(pwd):/mnt/ --workdir=/mnt  talentrydev/phpcs phpcs --standard=PSR2 --extensions=php .
```