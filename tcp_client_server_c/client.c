#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>     // contains read/write sycalls
#include <sys/socket.h> // contains socket, connect, accept syscalls
#include <netinet/in.h> // needed for sockaddr_in

enum {
  MAXRCVLEN = 500,
  PORTNUM = 2300
};

int main(int argc, char *argv[])
{
  // create a socket file descriptor
  int mysocket = socket(AF_INET, SOCK_STREAM, 0);

  // create a struct to store the ip address to connect to
  struct sockaddr_in dest; 

  // zero out the address struct
  memset(&dest, 0, sizeof(dest));

  // set the connection type to tcp/ip
  dest.sin_family = AF_INET;

  // set the destinition ip address to localhost/127.0.0.1
  dest.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

  // set the destination port number
  dest.sin_port = htons(PORTNUM);

  // connect to the given address
  connect(mysocket, (struct sockaddr *)&dest, sizeof(struct sockaddr_in));

  // create a spot in memory to read data into (and zero it out)
  char* buffer[MAXRCVLEN + 1] = { 0 };

  // read data from socket into buffer (waits until data arrives or socket closes)
  int len = read(mysocket, buffer, MAXRCVLEN);

  // make sure buffer has null terminator for string
  buffer[len] = 0;

  // print out the buffer as a string to see what was sent
  printf("Received: %s (%d bytes).\n", buffer, len);

  // close our connection
  close(mysocket);
  return EXIT_SUCCESS;
}
