Based on the fits-nailgun.sh and fits-nailgun-env.sh in https://github.com/harvard-lts/fits

## Prerequisites
Nailgun client 'ng': https://github.com/facebook/nailgun

## Usage
#### Start the nailgun server
$ ./jhove-nailgun.sh

#### Invoke Jhove from nailgun
$ ng Jhove -c conf/jhove.conf [JHOVE FLAGS] test/Screenshot.tif
