[BITS 16] 
   jmp short _start 

; ----------------------------------------------------------------------
; data portion of the "DOS BOOT RECORD"
; ----------------------------------------------------------------------
brINT13Flag     DB      90H             ; 0002h - 0EH for INT13 AH=42 READ
brOEM           DB      'TEENYOS0'      ; 0003h - OEM name & DOS version (8 chars)
brBPS           DW      512             ; 000Bh - Bytes/sector
brSPC           DB      1               ; 000Dh - Sectors/cluster
brResCount      DW      1               ; 000Eh - Reserved (boot) sectors
brFATs          DB      2               ; 0010h - FAT copies
brRootEntries   DW      200H		; 0011h - Root directory entries
brSectorCount   DW      2048		; 0013h - Sectors in volume, < 32MB
brMedia         DB      240		; 0015h - Media descriptor
brSPF           DW      6               ; 0016h - Sectors per FAT
brSPH           DW      16              ; 0018h - Sectors per track
brHPC           DW      2		; 001Ah - Number of Heads
brHidden        DD      0               ; 001Ch - Hidden sectors
brSectors       DD      0	        ; 0020h - Total number of sectors
		DB      0               ; 0024h - Physical drive no.
		DB      0               ; 0025h - Reserved (FAT32)
		DB      29H             ; 0026h - Extended boot record sig 
brSerialNum     DD      '133742000'     ; 0027h - Volume serial number (random)
brLabel         DB      'TeenyOS EVT'   ; 002Bh - Volume label  (11 chars)
brFSID          DB      'FAT12   '      ; 0036h - File System ID (8 chars)
;------------------------------------------------------------------------


_start:
   xor ax, ax ;make it zero
   mov ds, ax

   mov si, msg
   cli

ch_loop:lodsb
   or al, al  ; zero=end of string
   jz hang    ; get out
   mov ah, 0x0E
   mov bh, 0
   int 0x10
   jmp ch_loop

hang:
   jmp hang

msg   db 'Hello World', 13, 10, 0

   times 510-($-$$) db 0
   db 0x55
   db 0xAA

fat1:                           ; empty FAT12 file system
  db 0F0h, 0FFh, 0FFh
  times 512*9-($-fat1)            db 0
fat2:
  db 0F0h, 0FFh, 0FFh
  times 512*9-($-fat2)            db 0
root:
  times 512*14                    db 0
  times 512*14                    db 0
  times 512*14                    db 0

;FAT12 table
;   db 0xf8
;   db 0xff
;   db 0xff
;   times 3069 db 0
;   db 0xf8
;   db 0xff
;   db 0xff
;   times 519 db 0
