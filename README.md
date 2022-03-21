# Docker_Rpackage_synbreed
Docker container built to run the deprecated R package synbreed https://synbreed.r-forge.r-project.org/


## Use with Docker
Download the Dockerfile

(you should also download Docker Desktop)

Create an image with the Dockerfile. Open terminal (or similar) and run the following:

`docker build -t synbreed .`

You must be inside of the directory containing the Dockerfile for this to work. 

See image in you Docker Desktop app. 

![Screen Shot 2022-03-21 at 2 04 57 PM](https://user-images.githubusercontent.com/22206944/159363603-bd648f56-4333-4490-b0c6-5d1fc3cf5a3e.png)

Click the RUN! button on the right side; name the container (optional). 

![Screen Shot 2022-03-21 at 2 06 45 PM](https://user-images.githubusercontent.com/22206944/159363832-c1e2a946-eb2f-4740-a550-a23446d39e70.png)

Click the >_ button which will open the container in terminal. 

## Use with Singularity (Apptainer)

