# Dockerized eButterfly SDM

## About
A [Dockerized](https://www.docker.com/what-docker) implementation of the [eButterfly SDM](https://github.com/jcoliver/ebutterfly-sdm)

## Usage
Use the Dockerfile to build the Docker image.

```
[~/butterfly-sdm]$ docker build --rm -t butterfly-sdm .
```

The docker image takes 1 argument, a taxon ID, from which it 1) downloads necessary data, and 2) runs the SDM.

```
docker run butterfly-sdm <taxon_id>
```

e.g.
```
[~]$ docker run --rm butterfly-sdm 60606
```

You probably want to save the data, which can be done by mounting a volume to the /usr/local/data directory.
```
docker run -v <volume_absolute_path_or_name>:/usr/local/data --rm butterfly-sdm <taxon_id>
```

e.g.
```
[~]$ docker run -v /home/Username/sdm_data:/usr/local/data --rm butterfly-sdm 509627
[~]$ ls
sdm_data/ <...>
[~]$ ls sdm_data
inaturalist/ results/ <...>
```
