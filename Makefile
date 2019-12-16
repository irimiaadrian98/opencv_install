
# makefile pentru opencv facedetect

CC = g++
CFLAGS = -g -Wall
SRCS = facedetect.cpp
PROG = facedetect
RM   = rm -f

LIBS = `pkg-config opencv4 --cflags --libs`

$(PROG):$(SRCS)
	$(CC) $(CFLAGS) -o $(PROG) $(SRCS) $(LIBS)

clean:
	$(RM) facedetect



