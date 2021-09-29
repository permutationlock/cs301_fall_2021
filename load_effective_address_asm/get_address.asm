section .text
global get_address_of_power

; returns a pointer to the given index in our array
get_address_of_power:
  ; the lea instruction lets us compute an address in one (otherwise we would need imul + add)
  lea rax, [powers_of_two + 8 * rdi]
  ret

section .data
powers_of_two:
  dq 1, 2, 4, 8, 16, 32, 64, 128
