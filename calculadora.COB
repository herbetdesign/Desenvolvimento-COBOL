      ******************************************************************
      * Author: HERBET SANTOS
      * Date: 14 DE SETEMBRO DE 2023
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 N1                PIC 9(5).
       01 N2                PIC 9(5).
       01 RESULTADO         PIC 9(6).
       01 OPERACAO          PIC X(1).

       PROCEDURE DIVISION.
            DISPLAY "CALCULADORA".
            DISPLAY "**************************************".
            DISPLAY "DIGITE O PRIMEIRO NUMERO: ".
            ACCEPT N1.
            DISPLAY "DIGITE A OPERACAO: + - * / ".
            ACCEPT OPERACAO.
            DISPLAY "DIGITE O SEGUNDO NUMERO: ".
            ACCEPT N2.

            PERFORM CALCULAR.

            DISPLAY "RESULTADO EH: " RESULTADO.
            STOP RUN.

            CALCULAR.
                IF OPERACAO = "+" THEN
                    ADD N1 TO N2 GIVING RESULTADO
                ELSE IF OPERACAO = "-" THEN
                    SUBTRACT N1 FROM N2 GIVING RESULTADO
                ELSE IF OPERACAO = "*" THEN
                    MULTIPLY N1 BY N2 GIVING RESULTADO
                ELSE IF OPERACAO = "/" THEN
                    DIVIDE N1 BY N2 GIVING RESULTADO
                ELSE
                    DISPLAY "OPERACAO INVALIDA. USE + OU - OU * OU /"
                STOP RUN.
       END PROGRAM CALCULADORA.
