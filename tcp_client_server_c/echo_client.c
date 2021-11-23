#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h> // contains read/write sycalls

#include <netinet/in.h> // needed for sockaddr_in and htonl functions
#include <sys/socket.h> // contains socket, connect, accept syscalls

enum {
  MAXRCVLEN = 500,
  PORTNUM = 2300
};

int main(int argc, char *argv[])
{
  // struct to store the address of the server we are connecting to
  struct sockaddr_in dest; 

  // zero the struct before filling the fields
  memset(&dest, 0, sizeof(dest));

  // set the type of connection to TCP/IP
  dest.sin_family = AF_INET;

  // set our address to localhost (we are connecting to a local server)
  // htonl is named for Host TO Network Long
  //  -> it reverses the bit order of a long's binary representation
  dest.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

  // set the port number to connect to on the server
  // htons is named for Host TO Network Short
  // -> it works the same as htonl but for short (16 bit) numbers
  dest.sin_port = htons(PORTNUM);

  // create a socket file descriptor to connect to the server with
  int mysocket = socket(AF_INET, SOCK_STREAM, 0);

  //connect to the given address on the given socket file descriptor
  int error = connect(
      mysocket,
      (struct sockaddr *)&dest,
      sizeof(struct sockaddr_in)
    );

  if(error != 0) {
    printf("Connection failed\n.");
    exit(1);
  }

  // buffer to read messages into (extra byte for null terminator)
  char buffer[MAXRCVLEN + 1];

  // int to store the length of reads and writes
  int len = 0;

  while(1) {
    // zero out the buffer before we read in data
    memset(buffer, 0, MAXRCVLEN + 1);

    // read up to MAXRCVLEN bytes from stdin
    len = read(0, buffer, MAXRCVLEN);

    // skip if an empty line was entered
    if(buffer[0] == '\n') {
      continue;
    }

    // remove end of line and replace with null terminator
    if(buffer[len - 1] == '\n') {
      buffer[len - 1] = 0;
    } 

    // send our newly read string to the server via our socket fd
    len = write(mysocket, buffer, len);

    // if zero bytes were read, the connection has closed
    if(len <= 0) {
      printf("Connection closed by server.\n");
      break;
    }

    printf("Sent %d bytes: %s\n", len, buffer);

    // read up to MAXRCVLEN bytes from the socket connected to the server
    len = read(mysocket, buffer, MAXRCVLEN);

    // if zero bytes were written, the connection has closed
    if(len <= 0) {
      printf("Connection closed by server.\n");
      break;
    }

    // add a final null terminator in case the server didn't add one
    buffer[len] = 0;

    printf("Received %d bytes: %s\n", len, buffer);
  }

  close(mysocket);
  return EXIT_SUCCESS;
}
