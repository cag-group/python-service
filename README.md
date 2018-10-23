## Initial setup

```
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
```

## Add package

```
pip3 install <packagename>
```

Note the version of the installed package. Add it to `requirements.txt`

Do not use `pip3 freeze` because it will also list dependent packages and thus hiding which are our direct dependencies.

## Upgrade package

Conservative upgrade:
```
pip3 install <packagename> --upgrade
```

Upgrading with "eager" gives the same package version as we would have if we insgtalled the new version from start.

```
pip3 install <packagename> --upgrade --upgrade-strategy eager
```

## Reinstalling everything

```
rm -rf venv
```

then follow procedure "Initial setup".

## Run in docker

docker build -t python-service .
docker run --name python-service -p 5000:5000 python-service
