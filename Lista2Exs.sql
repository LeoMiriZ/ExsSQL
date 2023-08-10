-- Exercício 1

select Nr_placa, Nm_proprietario, loc_proprietario.cd_proprietario
from loc_proprietario
inner join loc_veiculo on loc_veiculo.cd_Proprietario = loc_proprietario.cd_proprietario;

-- Exercício 6

select * from loc_item_locacao
where Vl_Diaria > 200;

-- Exercício 3

select * from loc_funcionario
where Vl_Salario > 10000;

-- Exercício 2

select cd_proprietario, Nm_Proprietario
from loc_proprietario
where Nm_Proprietario Like "%t";

-- Exercício 4

select Nr_placa, Nm_proprietario, loc_cor.Desc_Cor
from loc_proprietario
inner join loc_veiculo on loc_veiculo.cd_Proprietario = loc_proprietario.cd_proprietario
inner join loc_cor on loc_veiculo.cd_cor = loc_cor.cd_Cor;

-- Exercício 5

select f.nm_func, nm_cargo, f.cd_func, g.cd_func, g.Nm_Func
from loc_funcionario f
inner join loc_cargo on f.cd_Cargo = loc_cargo.cd_Cargo
inner join loc_funcionario g on f.Cd_Gerente = g.Cd_Func;










