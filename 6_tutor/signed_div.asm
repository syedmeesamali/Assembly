;This example worked on online assembly compiler at below location
;https://carlosrafaelgn.com.br/asm86/

mov ecx, 0
mov eax, -22    ;dividend

divloop:
  cmp eax, 6    ;divisor
  jb done 
  add eax, 6
  inc ecx
  jmp divloop

done:         ;result is in cx register