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

Start R from within container.

`R`

## Use with Singularity (Apptainer)

Download docker image to be run with singluarity.

Load module first if necessary.
`module load singularity`

`singularity pull synbreed.sif docker://finchnsnps/synbreed:synbreed`

Open container as a shell with singularity.

`singularity shell --cleanenv synbreed.sif`

Start R from within container.

`R`

## Test container

Test the synbreed package from within the docker container. For this test, we will convert allele format into genotype dosage format (0 = homozygous for the reference allele, 1 = heterozygous, 2 = homozygous for the alternate allele). For more information about functions available in the synbreed package see: https://synbreed.r-forge.r-project.org/synbreed-manual.pdf

Start R from within container.

`R`

Load synbreed library

`library(synbreed)`

Load test data

`test<-read.csv("Docker_Rpackage_synbreed/synbreed_test_data.csv",header=1)`

`head(test)`

![Screen Shot 2022-03-21 at 2 32 47 PM](https://user-images.githubusercontent.com/22206944/159367405-de4db77b-1d2b-43f7-ad3a-0bd3a0aad778.png)

synbreed requires a dataframe of loci (no sample names) and row names. So, we will make a new dataframe with the test data and make the sample names the row names for the synbreed data conversion. 

`locus<-test[c(2:ncol(test))]`

`head(locus)`

![Screen Shot 2022-03-21 at 2 37 14 PM](https://user-images.githubusercontent.com/22206944/159367917-a906d7dc-1fdf-45d0-9828-e32fb3124d57.png)

Add row names

`rownames(locus)<-test$ID`

`head(locus)`

![Screen Shot 2022-03-21 at 2 38 17 PM](https://user-images.githubusercontent.com/22206944/159368006-5fab2145-dc83-4abf-80ed-2563b0fe156e.png)

Use the create.gpData function. gp.Data is a special data format required by synbreed.

`snps_gp<-create.gpData(geno=locus)`

Convert allele to dosage genotype format with function codeGeno. This time without imputing. synbreed with impute data with `impute=TRUE`

`geno<-codeGeno(snps_gp,impute=FALSE)`

Save converted data in a new dataframe. 

`geno<-data.frame(geno$geno)`

`head(geno)`

![Screen Shot 2022-03-21 at 2 41 33 PM](https://user-images.githubusercontent.com/22206944/159368351-c654e2d2-1877-4854-b9c5-3b0a88eb4b65.png)




