## Initial setup

```
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
```

## Add package

Lookup the package version you want to install on the package home page, or run

```
pip3 install <packagename>
```

and note the version of the installed package. Add it to `requirements.txt`

Do not use `pip3 freeze` because it will also list dependent packages and thus hiding which are our direct dependencies.

## Upgrade package

Conservative upgrade:
```
pip3 install <packagename> --upgrade
```

Upgrading with "eager" gives the same package version as we would have ended up with if we installed the new version from start.

```
pip3 install <packagename> --upgrade --upgrade-strategy eager
```

## Reinstalling everything

```
rm -rf venv
```

then follow procedure "Initial setup".

## Run in docker

```
docker build -t python-service .
docker rm -f python-service
docker run --name python-service -p 5000:5000 python-service
```

## Run/debug in Intellij

- In "Platform settings", add a new "Python SDK" with the Python SDK home path set to: `/<app-folder>/venv/bin/python`
- Right-click on `app-debug.py` and select `Debug` or `Run`