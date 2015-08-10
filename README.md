# LatiNerTrainingTest

This repository contains a training set and a shell script to train and test a Latin Ner model with Apache OpenNLP.

gold.ner  -- is the training set, derived from Ammianus Marcellinus (not perfect), in the OpenNLP compliant format
generator.xml	and	ner-params.par  --  are configuration files used by OpenNLP
ammianus-train-test.sh  -- the script to launch the 4-fold cross validation

