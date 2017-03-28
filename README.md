# Docker-sphinx4doc

# build
docker build -t sphinx4doc .

# run
docker run -it -e "container=container-sphinx4doc" --name container-sphinx4doc -h container-sphinx4doc sphinx4doc

```
mkdir -p /opt/workspace
cd /opt/workspace

sphinx-quickstart

... ...

cp /opt/demo.rst /opt/workspace/source/

vi source/index.rst

Contents:

.. toctree::
   :maxdepth: 2

   demo


cd /opt/workspace/

make html

cd /opt/workspace/build/html

```

nginx for html/index.html

enjoy it!

http://www.ibm.com/developerworks/cn/opensource/os-sphinx-documentation/

