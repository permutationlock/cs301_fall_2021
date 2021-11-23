#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <unistd.h>     // contains read/write sycalls
#include <sched.h>      // contains clone system call
#include <signal.h>
#include <sys/wait.h>

enum {
  STACK_SIZE = 4096
};

int do_work(void* args) {
  char buffer[] = "hello from thread\n";
  write(1, buffer, strlen(buffer));
  return 0;
}

int main()
{
  void* stack = malloc(STACK_SIZE);

  clone(do_work, stack + STACK_SIZE,
      CLONE_FS | CLONE_SIGHAND | CLONE_FILES | CLONE_VM | SIGCHLD, NULL);
 
  char buffer[] = "hello from main\n";
  write(1, buffer, strlen(buffer));
  
  int result = 0;
  wait(&result);
 
  return 1;
}
