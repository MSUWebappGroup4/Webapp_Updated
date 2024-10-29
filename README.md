# Documentation
## Docker
To first start we need to make our docker image and build.
- Frist we need to make a new folder for our docker files/images.
- Then we CD into the file with the image file that we are looking to use or an empty file.
- Remember to be up to date in `Docker Desktop` and  `Ruby`
- In the new folder import the build files needed for the image.

### Code commands in order from this point.
```
- docker buildx build -t <Docker username>/<Image name> .
- docker run -it -p 3000:3000 -v ${PWD}:/workspace <Docker username>/<Image name>
```
If for some reason you are getting a Metadata error clear the docker config
```
- rm  ~/.docker/config.json 
```
Helpful docker commands
```
docker ps -a (list all docker files that you have in that dict)
docker stop <CONTAINER_NAME> (Stop a docker container)
docker restart <CONTAINER_NAME> (Remote restarts the container)
docker exec -it <CONTAINER_NAME> /bin/sh (Opens a terminal for a running docker container)
```

## Portfolio Setup
Whe we are working on your app you will need to add the folder that has your app into your workspace at your folder, not in the docker. Once the files are moved you should be able to see it in your active workspace.
```
#cd <APP FOLDERNAME>/
```
Once you are in the same folder in the app you are able, make sure that all of your gems are installed and your database is built.
```
#bundle install
#rails db:migrate
```
