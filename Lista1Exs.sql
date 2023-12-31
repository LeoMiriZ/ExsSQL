-- listar os registros dos funcionários
select * from loc_funcionario;
-- listar  código, nome e salário de funcionários
select Cd_Func, Nm_Func, Vl_Salario from loc_funcionario;

select Cd_Func, Nm_Func, Vl_Salario from loc_funcionario
order by Vl_Salario;

-- quem é o funcionário 5?

select * from loc_funcionario
where Cd_Func = 5;

-- quem trabalha no depto 42?

select * from loc_funcionario
where Cd_Depto = 42;

-- qual o nome do depto 42?

select Nm_Depto from loc_depto
where Cd_Depto = 42;

-- quem ganha mais que 4000? nome e salário

select Nm_Func, Vl_Salario from loc_funcionario
where Vl_Salario > 4000;

-- quem ganha entre 4000 e 8000?

select Nm_Func, Vl_Salario from loc_funcionario
where Vl_Salario >= 4000 and Vl_Salario <= 8000;

-- quem ganha menos que 4000 ou mais que 8000? nome, salário, modo normal

select Nm_Func, Vl_Salario from loc_funcionario
where Vl_Salario <= 4000 or Vl_Salario >= 8000;

-- quem ganha menos que 4000 ou mais que 8000? nome, salário, modo inverso

select Nm_Func, Vl_Salario from loc_funcionario
where not (Vl_Salario <= 4000 or Vl_Salario >= 8000);

select Nm_Func, Vl_Salario from loc_funcionario
where Nm_Func = 'Ana';

select Nm_Func, Vl_Salario from loc_funcionario
where Nm_Func = 'Ana Raquel';

select Nm_Func, Vl_Salario from loc_funcionario
where Nm_Func like 'Ana%';

select Nm_Func, Vl_Salario from loc_funcionario
where Nm_Func like '%na%';

-- nomes que terminam com ra

select Nm_Func from loc_funcionario
where Nm_Func like '%ra';

select Nm_Func from loc_funcionario
where Nm_Func like 'M_ri%';













