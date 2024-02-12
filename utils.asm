; Implements integer I/O utilities
; CSC 225, Assignment 4
; Given code, Winter '24

        .ORIG x5000     ; NOTE: Do not alter these addresses. They are
        .FILL GETI      ;       hardcoded within "calculator.asm", since the
        .FILL OUTI      ;       assembler cannot resolve cross-file labels.

; Reads one integer in the range {-9, ..., 9}.
;  Takes no arguments.
;  Returns the read integer in R0.
;  This subroutine WILL NOT PRINT ANYTHING to the console, including the negative sign
;  Printing the negative or positive integer will be handled by OUTI
;  TODO: Implement this subroutine.
GETI:
    GETC
    ADD R0, R0, #-15
    ADD R0, R0, #-15
    ADD R0, R0, #-15
    BRz NEG 
    ADD R0, R0, #-3
    BRzp INT
ERR LEA R0, ERROR
    PUTS
    HALT
NEG GETC
    ADD R0, R0, #-16
    ADD R0, R0, #-16
    ADD R0, R0, #-16
    BRz ERR
    ADD R0, R0, #-9
    BRp ERR
    ADD R0, R0, #9
    NOT R0, R0
    ADD R0, R0, #1
    RET
INT ADD R0, R0, #-9
    BRp ERR
    ADD R0, R0, #9
    RET
    
    

; Prints one integer in the range {-9, ..., 9}.
;  Takes the integer in R0.
;  Returns no values.
;  TODO: Implement this subroutine.
OUTI:
    ST R3, REGT
    ST R0, REGZ
    ADD R0, R0, #0
    BRn NEGO
    ADD R0, R0, #3
    ADD R0, R0, #15
    ADD R0, R0, #15
    ADD R0, R0, #15
    OUT
    LD R0, REGZ
    LD R3, REGT
    RET
NEGO 
    NOT R3, R0
    ADD R3, R3, #1
    AND R0, R0, #0
    ADD R0, R0, #15
    ADD R0, R0, #15
    ADD R0, R0, #15
    OUT
    ADD R0, R3, R0
    ADD R0, R0, #3
    OUT
    LD R0, REGZ
    LD R3, REGT
    RET
    


ERROR .STRINGZ "Please enter an integer from { -9 : 9 } using the ( - ) for negative numbers"
REGZ .FILL x0
REGT .FILL x0


        .END
