# opencv_install

sudo apt-get update
sudo apt-get install build-essential

install cmake:
   sudo apt-get install cmake git libgtk2.0-dev pkg-config \
                     libavcodec-dev libavformat-dev libswscale-dev


1.Create a directory and cone opencv from git
	mkdir ~/opCV
	cd ~/opCV
	git clone https://github.com/opencv/opencv.git
	cd opencv
	mkdir build && cd build
2.Configuring. Run cmake

       cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D OPENCV_GENERATE_PKGCONFIG=YES \
      -D INSTALL_C_EXAMPLES=ON ..

3.Build. From build directory execute make

   make -j4 or make

4.Install libraries, execute from build directory

   sudo make install

5.run the facedetect example
 
    g++ -ggdb facedetect.cpp -o facedetect `pkg-config --cflags --libs opencv4`


   -or run the makefile in examples directory

6.Error

    libopencv_highgui.so.4.2: cannot open shared object file: No such file or directory
  
solution:
          in opencv directory:

           sudo ldconfig -v

           sudo updatedb && locate libopencv_core.so.2.4

           export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/opencv/lib


       

