#include <netdb.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>

const char* HOST = "djxmmx.net";
const char* PORT_STR = "17";
const int BUFFER_SIZE = 512;

void error_message(int line);

int main() {
    int sockfd, n, status;
    struct addrinfo hints, *res;
    char buffer[BUFFER_SIZE];

    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    status = getaddrinfo(HOST, PORT_STR, &hints, &res);
    if (status != 0) {
        fprintf(stderr, "getaddrinfo error: %s\n", gai_strerror(status));
        exit(1);
    }

    sockfd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
    if (sockfd < 0) {
        freeaddrinfo(res);
        error_message(__LINE__);
    }

    if (connect(sockfd, res->ai_addr, res->ai_addrlen) < 0) {
        close(sockfd);
        freeaddrinfo(res);
        error_message(__LINE__);
    }

    freeaddrinfo(res);

    memset(buffer, 0, BUFFER_SIZE);
    n = recv(sockfd, buffer, BUFFER_SIZE - 1, 0);
    if (n < 0) {
        close(sockfd);
        error_message(__LINE__);
    }

    buffer[n] = '\0';
    printf("%s\n", buffer);
    close(sockfd);

    return 0;
}

void error_message(int line)
{
    printf("ERROR: LINE %d", line);
    exit(1);
}
