docker build -t bottle-server . && \
docker run --rm -it -p 8080:8080 -v $(pwd)/bottleFiles:/home/bottleUser/bottleFiles bottle-server
