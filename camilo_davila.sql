--------------------------------------------------------
-- Archivo creado  - miércoles-abril-25-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function FIBONACCI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FIBONACCI" (n in number)
RETURN number IS    
    fib NUMBER :=0;
    first number:=0;
    second number:=1;
    third number;
    i number;
BEGIN
begin
    --dbms_output.put_line('Fibonacci series is:');
    --dbms_output.put_line(first);
    --dbms_output.put_line(second);    

    for i in 2..n
    loop
        third:=first+second;
        first:=second;
        second:=third;
        fib := third;
    end loop;
end;
RETURN fib;
END Fibonacci;
--------------------------------------------------------
--  DDL for Function FUNCTION_1
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_1" (a in number, b in number, c in number)
RETURN varchar2 IS
    var VARCHAR2(50);
    TEMP NUMBER :=0;

BEGIN
    IF (B >= C) THEN
        TEMP := a*b;
        var := TO_CHAR(a) || '/' || TO_CHAR(TEMP) || '/' ||'andres';
    END IF;
    IF (B < C) THEN
        TEMP := a*b;
        var := TO_CHAR(a) || '/' || TO_CHAR(TEMP) || '/' ||'martinez';
    END IF;
RETURN var;
END function_1;
--------------------------------------------------------
--  DDL for Function FUNCTION_2
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "EJERCICIOS"."FUNCTION_2" (n in number)
RETURN number IS    
    fib NUMBER :=0;   
BEGIN
    fib := 2*Fibonacci(n+1)-1;
RETURN fib;
END function_2;
