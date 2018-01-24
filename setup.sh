#!/bin/bash

if grep -Fxq 'module load hdp' ~/.bashrc
then 
  if grep -Fxq 'cypress-kinit' ~/.bashrc
  then
    echo 'User account is properly configured'
  else
    echo 'cypress-kinit' >> ~/.bashrc
  fi
else
  echo 'module load hdp' >> ~/.bashrc
  echo 'cypress-kinit' >> ~/.bashrc
fi

if grep -Fxq 'module load hdp' ~/.jhubrc
then 
  echo 'User account is properly configured'
else
  echo 'module load hdp' >> ~/.jhubrc
fi
