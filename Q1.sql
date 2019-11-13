SELECT NM_FUNCIONARIO,SALARIO, NM_DEPTO,
CASE
    WHEN SALARIO <= 3000 THEN 'AUMENTO DE 20%'
    WHEN SALARIO > 3000 AND SALARIO <= 10000 THEN 'AUMENTO DE 15%'
    ELSE 'AUMENTO DE 10%'
END AS 'AUMENTO',
CASE WHEN SALARIO <= 3000 THEN SALARIO + (SALARIO * 0.20)
    ELSE
       CASE WHEN SALARIO > 3000 AND SALARIO <= 10000 THEN SALARIO + (SALARIO * 0.15)
       ELSE SALARIO + (SALARIO * 0.10)
    END
END AS 'NOVO_SALARIO' FROM FUNCIONARIO AS F
INNER JOIN DEPTO AS D ON F.DEPTOID=D.DEPTOID
ORDER BY SALARIO ASC
