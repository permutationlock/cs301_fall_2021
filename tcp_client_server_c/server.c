#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>     // contains read/write sycalls
#include <sys/socket.h> // contains socket, connect, accept syscalls
#include <netinet/in.h> // needed for sockaddr_in

enum { PORTNUM = 2300 };

int main(int argc, char *argv[])
{
  struct sockaddr_in serv; // socket info about our server

  // zero the struct before filling the fields
  memset(&serv, 0, sizeof(serv));           

  // set the type of connection to TCP/IP
  serv.sin_family = AF_INET;                

  // set our address to accept connections on any interface
  // htonl is named for Host TO Network Long
  //  -> it reverses the bit order of a long's binary representation
  serv.sin_addr.s_addr = htonl(INADDR_ANY); 

  // set the server port number
  // htons is named for Host TO Network Short
  // -> it works the same as htonl but for short (16 bit) numbers
  serv.sin_port = htons(PORTNUM);

  //socket used to listen for incoming connections
  int mysocket = socket(AF_INET, SOCK_STREAM, 0); 

  // bind serv information to mysocket
  bind(mysocket, (struct sockaddr *)&serv, sizeof(struct sockaddr_in));

  // socket info about the machine connecting to us
  struct sockaddr_in dest; 

  // start listening, allowing a queue of up to one connection
  listen(mysocket, 1);

  // stores size of address (will be set to size of connection address)
  socklen_t socksize = sizeof(struct sockaddr_in);

  printf("Waiting for connection\n");

  // accept a connection and open a file descriptor (waits for connection)
  int confd = accept(
      mysocket,
      (struct sockaddr *)&dest,
      &socksize
    );

  // write our message via the open connection
  char message[] = "hello visitor";
  write(confd, message, strlen(message));

  printf("Sent: %s (%d bytes)\n", message, strlen(message));

  close(mysocket);

  return EXIT_SUCCESS;
}
