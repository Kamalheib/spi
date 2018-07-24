COMPILER=gcc
ARCHIVER=ar
CP=cp
COMPILER_FLAGS=
EXTRA_COMPILER_FLAGS=
OUT=libxil.a

RELEASEDIR=../../../lib
INCLUDEDIR=../../../include
INCLUDES=-I./. -I${INCLUDEDIR}

INCLUDEFILES=xspi_l.h xspi.h

LIBSOURCES=*.c
OUTS = *.o 
OBJECTS =	$(addsuffix .o, $(basename $(wildcard *.c)))

all: $(OUT)

.c.o:
	$(CC) $(CFLAGS) -fPIC $(INC) -c $< -o $@

$(OUT): $(OBJECTS)
	ar rcs $(OUT) $(OBJECTS)


clean:
	rm -rf ${OBJECTS}
