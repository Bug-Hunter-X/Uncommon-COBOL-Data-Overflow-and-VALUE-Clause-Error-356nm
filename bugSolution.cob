01  WS-AREA.         
    05 WS-DATA PIC 9(5) VALUE 99999. 
    05 WS-COUNT PIC 9(2) VALUE 0. 
    05 WS-SUM PIC 9(7) VALUE 0. 
    05 WS-OVERFLOW-FLAG PIC 9 VALUE 0. 

PROCEDURE DIVISION. 
    PERFORM UNTIL WS-COUNT > 5 
        ADD 1 TO WS-COUNT 
        ADD WS-DATA TO WS-SUM 
        IF WS-SUM > 9999999 THEN 
            MOVE 1 TO WS-OVERFLOW-FLAG 
            DISPLAY "Overflow detected!" 
        END-IF 
        DISPLAY "Iteration: " WS-COUNT " Sum: " WS-SUM 
    END-PERFORM. 
    IF WS-OVERFLOW-FLAG = 1 THEN 
        DISPLAY "Program terminated due to overflow." 
    ELSE 
        DISPLAY "Program completed successfully." 
    END-IF. 
    STOP RUN. 