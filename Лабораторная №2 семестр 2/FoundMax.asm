.586
.MODEL FLAT, C
.CODE
foundmin PROC C Text:dword, N:dword, count:dword
mov ecx, N
mov esi, Text
xor ebx,ebx
xor edx,edx

start:
	
	push dx; хранит максимальное количество букв
	mov eax, [esi]
	inc bx ; считает кол-во букв в текущем слове
	inc count; сколько символов прошли
	cmp eax, 20h
	je NotProbel
	pop dx
	cmp bx,dx
	jb lower
	mov dx,bx
	push dx
	;mov bx,0
	jmp NotProbel
lower:
	mov bx,0
	push dx
	jmp NotProbel
NotProbel:
	add esi, 1
	cmp al, 5Ch
	je exit
	loop start
exit:

ret
foundmin ENDP
END