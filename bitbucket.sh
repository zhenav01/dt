#!/bin/bash

#1
mkdir swdt-class-todo

#2
cd swdt-class-todo
git clone git@bitbucket.org:zhenav01/dt-proficiency-todo.git

#3
git branch dirty

#4
git checkout dirty

#5,6,7,8
find . -name "*.pyc" -type f -delete
find . -name "*.class" -type f -delete
find . -name "*.out" -type f -delete
find . -name "*.txt" -type f -delete

#9
git add *

#10
git commit -m "Clean the repository"

#11
git checkout main

#12
git merge dirty

#13
git branch -d dirty
