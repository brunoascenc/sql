SELECT NM_FUNCIONARIO,SALARIO, 
CASE WHEN SALARIO <= 3000 THEN SALARIO * 0.20
ELSE

     CASE WHEN SALARIO > 3000 AND SALARIO <= 10000 THEN SALARIO * 0.15

     ELSE SALARIO * 0.10
END

END AS 'NOVO SALARIO' FROM FUNCIONARIO  ORDER BY SALARIO ASC

SELECT * FROM FUNCIONARIO