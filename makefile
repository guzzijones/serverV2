###########
#add new depend files below 
#add new ones here object files relating to .cpp files
DEPS=driver.o ASocket.o 

EXE=driver

#######################
#DO NOT EDIT BELOW
#######################

###########
#variables
###########
CC=g++
CPPFLAGS= -Wall -g -c -I./include/  -I/opt/comLib/include -I/usr/share/boost_1_58_0/
CPPFLAGS+= -MD -MP -std=c++0x
LFLAGS= -Wall -L/opt/comLib/ -lutils -L/usr/share/boost_1_58_0/lib/ -lboost_serialization
VPATH=src

all: $(EXE)

debug: CC+= -DDEBUG -g 
debug: $(EXE)
###########
#linker
###########
$(EXE): $(DEPS)
	$(CC)  $(DEPS) $(LFLAGS) -o $(EXE).exe

##########
#implicit calls for all object file builds
#########

###########
#include dependency files 
###########
-include $(DEPS:%.o=%.d)

