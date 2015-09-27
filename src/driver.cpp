
#include "ASocket.h"
#include "delegate.h"
int main (int args, char* []){
   ASocket ServerSocket(3000,5);

   ServerSocket.listenSocket();
   return 0;
}
