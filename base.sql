create table usuarios(
id_usuario serial primary key,
nome varchar(100),
email varchar(100),
cidade varchar(50),
data_criacao timestamp
);

create table contas (
id_conta serial primary key,
fk_usuario int references usuarios(id_usuario),
saldo numeric(12,2),
status_conta varchar(20)
);

create table transacoes (
id_transacao serial primary key,
fk_conta_origem int,
fk_conta_destino int,
valor numeric(12,2),
data_transacao timestamp
);
