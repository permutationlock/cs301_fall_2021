#include<stdio.h>
#include<string.h>

struct bank_account {
  char pin[5];
  long balance;
};

void get_balance(struct bank_account* acc) {
  printf("Balance: %ld.%ld\n", acc->balance/100, acc->balance%100);
}

void update_pin(struct bank_account* acc) {
  printf("enter your new pin:\n");
  scanf("%s", acc->pin);
}

void manage_account(struct bank_account* acc) {
  int option = 0;
  while(1) {
    printf("Very Secure Bank:\n\t1:\tget balance\n\t2:\tupdate pin\n\t0:\texit\n");
    printf("Enter an action:\n");
    scanf("%d", &option);
    if(option <= 0 || option > 2) break;

    char pin[5];
    printf("enter your pin:\n");
    scanf("%s", pin);
    for(int i = 0; i < 4; ++i) {
      if(acc->pin[i] != pin[i]) {
        printf("incorrect pin: %s\n", pin);
        continue;
      }
    }

    if(option == 1) {
      get_balance(acc);
    } else {
      update_pin(acc);
    }
  }
}

int main() {
  struct bank_account acc;
  strcpy(acc.pin, "1234");
  acc.balance = 0;
  manage_account(&acc);
  return 0;
}
