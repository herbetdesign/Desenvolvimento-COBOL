       IDENTIFICATION DIVISION.
       PROGRAM-ID. CalculadoraEmprestimo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  MONTANTE-EMP       PIC 9(9)V99 VALUE 0.
       01  TX-JUROS                PIC 9(4)V99 VALUE 0.
       01  NUM-PARCELAS           PIC 9(3) VALUE 0.
       01  PRESTACAO-MEN          PIC 9(9)V99 VALUE 0.
       01  JUROS-MEN             PIC 9(9)V99 VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "CALCULADORA DE EMPRESTIMOS".
           DISPLAY "DIGITE O VALOR DO EMPRESTIMO: ".
           ACCEPT MONTANTE-EMP.
           DISPLAY "DIGITE A TAXA DE JUROS (PORCENTAGEM): ".
           ACCEPT TX-JUROS.
           DISPLAY "DIGITE O NUMERO DAS PARCELAS: ".
           ACCEPT NUM-PARCELAS.

           COMPUTE TX-JUROS = TX-JUROS / 100.
           COMPUTE JUROS-MEN = (MONTANTE-EMP * TX-JUROS) / NUM-PARCELAS.
           COMPUTE PRESTACAO-MEN = (MONTANTE-EMP / NUM-PARCELAS) + JUROS-MEN.

           DISPLAY "Presta��o mensal: " PRESTACAO-MEN.

           STOP RUN.
