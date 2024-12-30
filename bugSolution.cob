```cobol
01  WS-DATA-AREA.
    05  WS-COUNT PIC 9(5) VALUE 0.
    05  WS-ARRAY-SIZE PIC 9(5) VALUE 100.
    05  WS-ARRAY OCCURS 100 TIMES DEPENDING ON WS-ARRAY-SIZE.
       10  WS-ARRAY-ELEMENT PIC 9(3).

PROCEDURE DIVISION.

    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > WS-ARRAY-SIZE
       MOVE WS-COUNT TO WS-ARRAY(WS-COUNT)
    END-PERFORM.

    DISPLAY "Array populated successfully."
    STOP RUN.
```