# Docker-sphinx4doc

# build
docker build -t sphinx4doc .

# run
docker run -it -e "container=container-sphinx4doc" --name container-sphinx4doc -h container-sphinx4doc sphinx4doc
