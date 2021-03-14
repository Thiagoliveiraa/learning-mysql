/* Lista 01 - SQL */
/*
QUESTÃO 1
Quais os nomes (apenas os nomes) de todos os departamentos que existem ?
*/
SELECT 
    D.dept_name
FROM
    departments AS D
;
/*
QUESTÃO 2
Quais funcionárias foram gerentes de quais departamentos ? 
Mostre apenas o primeiro nome, o último nome, e o código do departamento
*/

/*utilizei operador de junção que une duas tabelas com base em valores comuns neste caso o empt_no,
utilizei o operador de projeção onde extrai colunas, neste caso foi 
requerido as colunas primeiro nome, ultimo nome e o codigo do departamento, 
no final precisa usar o operador de restrição para que apenas apareça 
as funcionarias na projeção*/
SELECT 
    E.first_name, E.last_name, D.dept_no
FROM
    employees AS E
        INNER JOIN
    dept_manager AS D ON E.emp_no = D.emp_no
WHERE
    E.gender = 'F'
;
/*
QUESTÃO 3
Altere a projeção da Questão 2 para, em vez do código, mostrar o nome do departamento. 
*/
/*Como tudo é tabela e entra tabela mais operador sai tabela, o resultado da anterior é uma tabela onde se tem 
uma coluna de dept_no, logo é possivel fazer uma inner join com departments visto que
tambem apresenta dept_no, logo é possivel unir com base em valores comuns 
*/
SELECT 
    E.first_name, E.last_name, DP.dept_name
FROM
    employees AS E
        INNER JOIN
    dept_manager AS D ON E.emp_no = D.emp_no
        INNER JOIN
    departments AS DP ON D.dept_no = DP.dept_no
WHERE
    E.gender = 'F'
;
/*
QUESTÃO 4
Quais os salários das funcionárias que foram gerentes de departamentos ? 
Mostre o nome da funcionária, o código do departamento, e o salário
*/
SELECT 
    E.first_name, D.dept_no, S.salary
FROM
    employees AS E
        INNER JOIN
    dept_manager AS D ON E.emp_no = D.emp_no
        INNER JOIN
    salaries AS S ON E.emp_no = S.emp_no
WHERE
    E.gender = 'F'
;
/*
QUESTÃO 5
Altere a restrição da Questão 4 para, em vez de funcionárias, restringir os funcionários.
*/
SELECT 
    E.first_name, D.dept_no, S.salary
FROM
    employees AS E
        INNER JOIN
    dept_manager AS D ON E.emp_no = D.emp_no
        INNER JOIN
    salaries AS S ON E.emp_no = S.emp_no
WHERE
    E.gender = 'M'
;
