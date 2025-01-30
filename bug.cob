01  WS-AREA.         
    05 WS-DATA PIC 9(5) VALUE 99999. 
    05 WS-COUNT PIC 9(2) VALUE 0. 
*  An uncommon error may occur during the VALUE clause's execution.
*  If the value assigned exceeds the data type's capacity, unexpected behavior may result.
*  In this case, the value 99999 is assigned to a 5-digit field, which is acceptable. 
*  However, for a 2-digit field, it would overflow.
    05 WS-SUM PIC 9(7) VALUE 0. 

PROCEDURE DIVISION. 
    PERFORM UNTIL WS-COUNT > 5 
        ADD 1 TO WS-COUNT 
        ADD WS-DATA TO WS-SUM 
        DISPLAY "Iteration: " WS-COUNT " Sum: " WS-SUM 
    END-PERFORM 
    STOP RUN. 