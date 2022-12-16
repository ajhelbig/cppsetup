#!/usr/bin/env bash

#check for raylib

if [ "$#" -eq 1 ]; then

	#raylib file setup here
	if [ "$1" == "raylib" ]; then

		clear

		echo "$1" "cpp setup initiated ..."

		#creating main cmakelist and checkout script
		cat ~/Templates/cppsetup-templates/raylib/main_cmake_template.txt > CMakeLists.txt
		cat ~/Templates/cppsetup-templates/raylib/checkout_template.txt > run.sh
		chmod +x run.sh

		#setting up the directory structure and populating with templated files
		mkdir build external src

		cd external && mkdir raylib

		cat ~/Templates/cppsetup-templates/raylib/external_cmake_template.txt > CMakeLists.txt

		cd raylib

		cat ~/Templates/cppsetup-templates/raylib/raylib_cmake_template.txt > CMakeLists.txt

		cd ../../src

		cat ~/Templates/cppsetup-templates/raylib/src_cmake_template.txt > CMakeLists.txt
		cat ~/Templates/cppsetup-templates/raylib/main_cpp_template.txt > main.cpp

		cd ../

		mkdir include

		touch .gitignore
		echo "build/" > .gitignore

		subl .

		./run.sh

	fi

else
	#std cpp file setup here

	clear

	echo "standard cpp setup initiated ..."

	cat ~/Templates/cppsetup-templates/std/main_cpp_std_template.txt > main.cpp
	cat ~/Templates/cppsetup-templates/std/make_std_template.txt > makefile
	cat ~/Templates/cppsetup-templates/std/run_std_template.txt > run.sh

	chmod +x run.sh

	#subl .

	./run.sh

fi
