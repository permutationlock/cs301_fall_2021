#include<stdio.h>

typedef void (*disconnect_t)(void);

struct voip_room {
  long id;
  long participants;
  disconnect_t disconnect;
};

void default_disconnect() {
  puts("disconnected");
}

int main() {
  struct voip_room room;
  room.disconnect = default_disconnect;
  room.disconnect();
  return 0;
}
