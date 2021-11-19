#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h> // contains read/write sycalls
#include <pthread.h>

#include <sys/socket.h> // contains socket, connect, accept syscalls

#include <netinet/in.h> // needed for sockaddr_in and htonl functions
#include <arpa/inet.h> // needed for inet_ntoa

enum {
  PORTNUM = 2300,
  MAXRECVLEN = 500
};

// takes a file descriptor for an open socket and echoes back
// any messages received on the socket
void echo_on_socket(int confd) {
  int len = 0;
  char buff[MAXRECVLEN + 1];

  while(1) {
    len = read(confd, buff, MAXRECVLEN);

    if(len <= 0) {
      close(confd);
      break;
    }

    len = write(confd, buff, len);

    if(len <= 0) {
      close(confd);
      break;
    } else {
      buff[len] = '\0';
      printf("Echoed to client %d: %s\n", confd, buff);
    }
    len = -1;
  }

  printf("Client %d disconnected\n", confd);
}

int main(int argc, char *argv[])
{
  // struct to store the address and socket of our server
  struct sockaddr_in serv;

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

  // start listening, allowing a queue of up to MAXCONS connections
  listen(mysocket, 1);
  while(1) {
    // stores size of address (will be set to size of connection address)
    socklen_t socksize = sizeof(struct sockaddr_in);

    // accept a single connection on the socket fd mysocket
    int confd = accept(
        mysocket,
        (struct sockaddr *)&dest,
        &socksize
      );

    printf("Incoming connection from %s assigned to %d\n",
        inet_ntoa(dest.sin_addr), confd);

    echo_on_socket(confd);
  }

  close(mysocket);
  return EXIT_SUCCESS;
}
