-- Operações e Váriáveis SQLSERVER - Tipagem Estática
SELECT 1+2;
DECLARE @i int;
SET = @i= 1;
SELECT @i+1.5;

DECLARE @N1 int, @N2 int; -- É Necessário declarar a variável e seu tipo
set @N1=1;
Set @N2=1;
Set @N1=@N1+@N2;
Print @N1;
Select @N1 as 'Resultado:';


DECLARE @JAN DECIMAL(7,2),@FEV DECIMAL(7,2),@MAR DECIMAL(7,2);
SET @JAN=10000;
SET @FEV=20000;
SET @MAR=30000;
SELECT (@JAN+@FEV+@MAR)/3 AS 'TRIMESTRE';


Declare @componente nvarchar(6);
Set @componente= 'BD 2';
Select 'O componente é: '+@componente as 'Resultado:';
Print 'O componente é: '+@componente;
