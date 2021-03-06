#!/bin/bash
#ant -f ../build.xml downloader
hadoop jar downloader.jar /user/hduser/hipi-hadoop/list.txt /user/hduser/hipi-hadoop/output.hib $1
echo "Finished building HIPI Image bundle"
hadoop jar dumphib.jar -Dmapred.child.env=”JAVA_LIBRARY_PATH=YOUR_JAVA_LIB” -Djava.library.path=YOUR_JAVA_LIB -libjars PATH_TO_opencv-249.jar /user/hduser/hipi-hadoop/output.hib /user/hduser/hipi-hadoop/haarcascade_frontalface_default.xml /user/hduser/hipi-hadoop/dump/
