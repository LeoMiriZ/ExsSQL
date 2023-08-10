-- Exercício 1
select * from loc_estado
order by Sigla_Estado;

-- Exercício 2

select Nm_cidade, loc_cidade.Cd_estado
from loc_cidade
inner join loc_estado on loc_cidade.cd_Estado = loc_estado.cd_Estado
where loc_estado.Cd_Estado = 3
having Nm_Cidade like "%B%" or Nm_Cidade like "%Z%";


-- Exercício 3

select * from loc_funcionario
where Nm_Func like '%si%';

-- Exercício 4

select Nr_placa, Nr_chassis, Km_atual, Desc_cor
from loc_veiculo
inner join loc_cor on loc_veiculo.cd_cor = loc_cor.cd_Cor
where Km_Atual >= 10000 and Km_Atual <= 25000;

-- Exercício 5

select Nr_placa, Nm_proprietario
from loc_veiculo
inner join loc_proprietario p on loc_veiculo.Cd_Proprietario = p.cd_proprietario;

-- Exercício 6

select nm_depto, avg (Vl_Salario), Vl_Perc_Comissao
from loc_funcionario
inner join loc_depto on loc_funcionario.Cd_Depto = loc_depto.Cd_Depto
group by Nm_Depto
having Vl_Perc_Comissao = 3;

-- Exercício 7

select Nm_cargo, avg (Vl_Salario)
from loc_funcionario
inner join loc_cargo on loc_funcionario.Cd_Cargo = loc_cargo.Cd_Cargo
group by Nm_Cargo
having avg (Vl_Salario) < 5000;





