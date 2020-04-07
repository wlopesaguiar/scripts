-- Operações e Váriáveis Mysql - Tipagem dinâmica

SELECT 1+2;
set @i:= 1;
Select @i+1.5;
SET @d:= 1<>2; -- 1 = verdadeiro e 0 = falso
SELECT @d;
Set @N1=1;
Set @N2=1;
Set @NR=@N1+@N2;
Select @N1+@N2;
Select @NR;
SET @JAN=10.00;
SET @FEV=9.25;
SET @MAR=7.75;
SELECT (@JAN+@FEV+@MAR)/3 AS 'TRIMESTRE';

Set @componente= 'BD 2';
Select concat('O componente é: ', @componente ) as 'Resultado:';
