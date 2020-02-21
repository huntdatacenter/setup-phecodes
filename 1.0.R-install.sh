# path where you download and compile R
#PathToDownlad=/mnt/work/source/
mkdir work
mkdir /home/vagrant/work/source
PathToDownlad=/home/vagrant/work/source/

# path where R will be install
#PathToInstallR=/mnt/work/software/R/R-3.6.1
mkdir /home/vagrant/work/software
mkdir /home/vagrant/work/software/R
PathToInstallR=/home/vagrant/work/software/R/R-3.6.1

cd $PathToDownlad

#download lastest R:
wget https://cran.r-project.org/src/base/R-3/R-3.6.1.tar.gz

# extract
tar xvzf R-3.6.1.tar.gz
cd R-3.6.1

# install tcl and tk
sudo apt update
sudo apt install tcl-dev tk-dev

# could be that more packages have to be installed to compile properly

# configure R
./configure --with-x=no --prefix=${PathToInstallR} --enable-memory-profiling --enable-R-shlib --with-blas --enable-shared --with-tcltk --with-tcl-config=/usr/lib/tclConfig.sh --with-tk-config=/usr/lib/tkConfig.sh --with-libtiff --with-libpng --with-jpeglib

# compile
make -j1

# install R in path specified by PathToInstallR variable
make install

# add openbals
sudo apt-get install libopenblas-dev
