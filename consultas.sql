-- Listar  todas as transações acima de R$ 10.000
select * from transacoes
where valor > 10.000

-- Listar contas com saldo negativo
select id_conta,nome,saldo from usuarios u
join contas c on c.fk_usuario = u.id_usuario
where saldo < 0;

-- Lista usuários com mais de 3 contas
select  nome,count(*) as qta_contas 
from usuarios u
join contas c on c.fk_usuario = u.id_usuario
group by u.nome
having count(*) > 3;

-- Encontrar transações  que a origem e o destino são a mesma conta
select *
from transacoes t 
where fk_conta_destino = fk_conta_origem
group by t.id_transacao,t.fk_conta_origem ,t.fk_conta_destino

-- Mostrar o id do usúario que mais novimentou dinheiro 
select u.nome,sum(valor) as total_movimentado
from 
(
select fk_conta_origem as conta, valor from transacoes
union all
select fk_conta_destino as conta, valor from transacoes
) t
join contas c on c.id_conta = t.conta
join usuarios u on u.id_usuario = c.fk_usuario
group by u.nome
order by total_movimentado desc
limit 1;



