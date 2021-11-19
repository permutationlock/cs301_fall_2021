#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>     // contains read/write sycalls
#include <sys/socket.h> // contains socket, connect, accept syscalls
#include <netinet/in.h> // needed for sockaddr_in
#include <arpa/inet.h>  // needed for inet_addr, and other helpers

#define BUFFER_SIZE 1024

int main(int argc, char** argv) {
    char buffer[BUFFER_SIZE];
    in_addr_t in_addr;
    int mysocket;
    struct sockaddr_in sockaddr_in;

    char request[] = "GET / HTTP/1.1\r\nHost: example.com\r\n\r\n";
    int request_len = strlen(request);
    unsigned short server_port = 80;

    // Create a tcp socket
    mysocket = socket(AF_INET, SOCK_STREAM, 0);

    // Build the address
    in_addr = inet_addr("93.184.216.34");
    sockaddr_in.sin_addr.s_addr = in_addr;
    sockaddr_in.sin_family = AF_INET;
    sockaddr_in.sin_port = htons(server_port);

    // Connect
    int status = connect(
        mysocket,
        (struct sockaddr*)&sockaddr_in,
        sizeof(sockaddr_in)
      );
    if(status == -1) {
        perror("connect");
        exit(EXIT_FAILURE);
    }

    // Send http request
    write(mysocket, request, request_len);

    // Read the response
    int nbytes = 0;
    while((nbytes = read(mysocket, buffer, BUFFER_SIZE)) > 0) {
        write(STDOUT_FILENO, buffer, nbytes);
    }

    close(mysocket);
    exit(EXIT_SUCCESS);
}
