# Documentation
## Docker
To first start we need to make our docker image and build.
- Frist we need to make a new folder for our docker files/images.
- Then we CD into the file with the image file that we are looking to use or an empty file.
- Remember to be up to date in `Docker Desktop` and  `Ruby`
- In the new folder import the build files needed for the image.

### Code commands in order from this point.
```
docker buildx build -t <Docker username>/<Image name> .
docker run -it -p 3000:3000 -v ${PWD}:/workspace <Docker username>/<Image name>
```
If for some reason you are getting a Metadata error clear the docker config
```
rm  ~/.docker/config.json 
```
Helpful docker commands
```
docker ps -a (list all docker files that you have in that dict)
docker stop <CONTAINER_NAME> (Stop a docker container)
docker restart <CONTAINER_NAME> (Remote restarts the container)
docker exec -it <CONTAINER_NAME> /bin/sh (Opens a terminal for a running docker container)
```
## Database
The database is the core of the web app where we are able to find
```
db:create
db:drop
db:migrate
db:reset
db:rollback
db:seed
db:seed:replant
```
## Portfolio Setup
Whe we are working on your app you will need to add the folder that has your app into your workspace at your folder, not in the docker. Once the files are moved you should be able to see it in your active workspace.
```
#cd <APP FOLDERNAME>/
```
Once you are in the same folder in the app you are able, make sure that all of your gems are installed and your database is built.
```
bundle install
rails db:migrate
```
If you were making a new app here are some useful commands
```
rails generate scaffold [Name of scaffold] [NAME:DATA TYPE]
```
- Generates controller for the DB, +DB table with each added variable. YOU MUST follow up with db migrate.
```
rails destroy scaffold [Name of scaffold]
```
- Destroy the scaffold that you named.


## Running in Rails
Once you have your DB updated and your gems installed you should be able to run the server.
```
#rails server -b 0.0.0.0
```
Now that you have the server running you should be able to go to either of these links...
- [http://localhost:3000/](http://localhost:3000/)
- [http://localhost:3000/students/sign_in](http://localhost:3000/students/sign_in)
- [http://localhost:3000/rails/info/routes](http://localhost:3000/rails/info/routes)



