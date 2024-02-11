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
GETI

; Prints one integer in the range {-9, ..., 9}.
;  Takes the integer in R0.
;  Returns no values.
;  TODO: Implement this subroutine.
OUTI

        .END
