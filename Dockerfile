#run with ubuntu
FROM ubuntu:14.04

RUN apt install -y cmake

#update indexes
RUN apt-get update

#install R
RUN apt-get -y install r-base-dev r-cran-getopt r-cran-rgl

#install required R packages

#synbreed_0.12-9.tar.gz 2018-03-16 
#abind_1.4-3.tar.gz 2015-03-13
#BGLR_1.0.5.tar.gz 2016-08-19
#doBy_4.5.2.tar.gz 2012-02-16
#doParallel_1.0.11.tar.gz 2017-09-28
#
#igraph_1.2.1.tar.gz 2018-03-10
#qtl_1.42-8.tar.gz 2018-02-19
#regress_1.3-15.tar.gz 2017-04-21
#LDheatmap_0.99-2.tar.gz 2016-08-24
#
#dependencies 'abind', 'BGLR', 'doBy', 'doParallel', 'foreach', 'igraph', 'qtl', 'regress', 'LDheatmap' are not available for package 'synbreed'
#
#dependencies 'R2HTML', 'multcomp', 'lme4', 'snow' are not available for package 'doBy'
#R2HTML_2.3.1.tar.gz	2014-10-04
#multcomp_1.4-8.tar.gz 2017-11-08
#lme4_1.1-15.tar.gz 2017-12-21
#snow_0.4-2.tar.gz 2016-10-14
#
#dependencies 'mvtnorm', 'TH.data', 'sandwich' are not available for package 'multcomp'
#mvtnorm_1.0-7.tar.gz 2018-01-26
#TH.data_1.0-8.tar.gz 2017-01-23
#sandwich_2.4-0.tar.gz 2017-07-26
#
#namespace 'lattice' 0.20-24 is being loaded, but >= 0.20.27 is required
#lazy loading failed for package 'zoo'
#lattice_0.20-27.tar.gz 2014-02-27
#
#dependency 'zoo' is not available for package 'sandwich'
#zoo_1.8-1.tar.gz 2018-01-08
#
#package 'survival' 2.37-7 was found, but >= 2.39.4 is required by 'multcomp'
#ERROR: lazy loading failed for package 'multcomp'
#survival_2.39-4.tar.gz	2016-05-11
#
#dependencies 'minqa', 'nloptr', 'Rcpp', 'RcppEigen' are not available for package 'lme4'
#minqa_1.2.3.tar.gz 2014-02-04
#nloptr_1.2.0.tar.gz	2018-09-30
#Rcpp_0.12.15.tar.gz	2018-01-20
#RcppEigen_0.3.3.4.0.tar.gz 2018-02-07
#
#dependency 'Rcpp' is not available for package 'minqa'
#install Rcpp and RcppEigen first
#
#dependency 'testthat' is not available for package 'nloptr'
#testthat_0.9.tar.gz	2014-09-22
#
#dependency 'digest' is not available for package 'testthat'
#digest_0.6.4.tar.gz	2013-12-03
#
#namespace 'nlme' 3.1-113 is being loaded, but >= 3.1.123 is required
#lazy loading failed for package 'lme4'
#nlme_3.1-123.tar.gz	2016-01-17
#
#dependencies 'foreach', 'iterators' are not available for package 'doParallel'
#foreach_1.4.4.tar.gz 2017-12-12
#
#dependency 'iterators' is not available for package 'foreach'
#iterators_1.0.9.tar.gz	2017-12-12
#
#dependencies 'irlba', 'magrittr', 'pkgconfig' are not available for package 'igraph'
#irlba_2.3.1.tar.gz	2017-10-18
#magrittr_1.5.tar.gz	2014-11-22
#pkgconfig_2.0.1.tar.gz	2017-03-21
#
#dependencies 'genetics', are not available for package 'LDheatmap'
#genetics_1.3.8.1.tar.gz	2013-09-03
#
#dependencies 'combinat', 'gdata', 'gtools' are not available for package 'genetics'
#combinat_0.0-8.tar.gz	2012-10-29
#gtools_3.5.0.tar.gz	2015-05-29
#gdata_2.17.0.tar.gz	2015-07-04
	
RUN curl -O https://cran.r-project.org/src/contrib/Archive/abind/abind_1.4-3.tar.gz

RUN R CMD INSTALL abind_1.4-3.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/BGLR/BGLR_1.0.5.tar.gz

RUN R CMD INSTALL BGLR_1.0.5.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/R2HTML/R2HTML_2.3.1.tar.gz

RUN R CMD INSTALL R2HTML_2.3.1.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/mvtnorm/mvtnorm_1.0-7.tar.gz

RUN R CMD INSTALL mvtnorm_1.0-7.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/TH.data/TH.data_1.0-8.tar.gz

RUN R CMD INSTALL TH.data_1.0-8.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/lattice/lattice_0.20-27.tar.gz

RUN R CMD INSTALL lattice_0.20-27.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/zoo/zoo_1.8-1.tar.gz

RUN R CMD INSTALL zoo_1.8-1.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/sandwich/sandwich_2.4-0.tar.gz

RUN R CMD INSTALL sandwich_2.4-0.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/survival/survival_2.39-4.tar.gz

RUN R CMD INSTALL survival_2.39-4.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/multcomp/multcomp_1.4-8.tar.gz

RUN R CMD INSTALL multcomp_1.4-8.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/Rcpp/Rcpp_0.12.15.tar.gz

RUN R CMD INSTALL Rcpp_0.12.15.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/RcppEigen/RcppEigen_0.3.3.4.0.tar.gz

RUN R CMD INSTALL RcppEigen_0.3.3.4.0.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/minqa/minqa_1.2.3.tar.gz

RUN R CMD INSTALL minqa_1.2.3.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/digest/digest_0.6.4.tar.gz

RUN R CMD INSTALL digest_0.6.4.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/testthat/testthat_0.9.tar.gz

RUN R CMD INSTALL testthat_0.9.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/nloptr/nloptr_1.2.0.tar.gz

RUN R CMD INSTALL nloptr_1.2.0.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/nlme/nlme_3.1-123.tar.gz

RUN R CMD INSTALL nlme_3.1-123.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/lme4/lme4_1.1-15.tar.gz

RUN R CMD INSTALL lme4_1.1-15.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/snow/snow_0.4-2.tar.gz

RUN R CMD INSTALL snow_0.4-2.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/doBy/doBy_4.5.2.tar.gz

RUN R CMD INSTALL doBy_4.5.2.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/iterators/iterators_1.0.9.tar.gz

RUN R CMD INSTALL iterators_1.0.9.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/foreach/foreach_1.4.4.tar.gz

RUN R CMD INSTALL foreach_1.4.4.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/doParallel/doParallel_1.0.11.tar.gz

RUN R CMD INSTALL doParallel_1.0.11.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/irlba/irlba_2.3.1.tar.gz

RUN R CMD INSTALL irlba_2.3.1.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/magrittr/magrittr_1.5.tar.gz

RUN R CMD INSTALL magrittr_1.5.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/pkgconfig/pkgconfig_2.0.1.tar.gz

RUN R CMD INSTALL pkgconfig_2.0.1.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/igraph/igraph_1.2.1.tar.gz

RUN R CMD INSTALL igraph_1.2.1.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/qtl/qtl_1.42-8.tar.gz

RUN R CMD INSTALL qtl_1.42-8.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/regress/regress_1.3-15.tar.gz

RUN R CMD INSTALL regress_1.3-15.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/combinat_0.0-8.tar.gz

RUN R CMD INSTALL combinat_0.0-8.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/gtools/gtools_3.5.0.tar.gz

RUN R CMD INSTALL gtools_3.5.0.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/gdata/gdata_2.17.0.tar.gz

RUN R CMD INSTALL gdata_2.17.0.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/genetics/genetics_1.3.8.1.tar.gz

RUN R CMD INSTALL genetics_1.3.8.1.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/LDheatmap/LDheatmap_0.99-1.tar.gz

RUN R CMD INSTALL LDheatmap_0.99-1.tar.gz

RUN curl -O https://cran.r-project.org/src/contrib/Archive/synbreed/synbreed_0.12-9.tar.gz

RUN R CMD INSTALL synbreed_0.12-9.tar.gz

RUN yes | apt-get install git

RUN git clone https://github.com/finchnSNPs/Docker_Rpackage_synbreed.git

CMD ["/bin/bash"]
