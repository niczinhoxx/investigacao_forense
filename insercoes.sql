insert into usuarios (nome, email, cidade, data_criacao) 
values
('João Silva', 'joao@gmail.com', 'Rio de Janeiro', '2026-01-10'),
('Maria Souza', 'maria@gmail.com', 'São Paulo', '2026-01-12'),
('Carlos Lima', 'carlos@gmail.com', 'Belo Horizonte', '2026-01-15'),
('Ana Costa', 'ana@gmail.com', 'Curitiba', '2026-01-20'),
('Pedro Alves', 'pedro@gmail.com', 'Salvador', '2026-01-25');

insert into contas (fk_usuario, saldo, status_conta) 
values
(1, 5000.00, 'ativa'),
(1, 200.00, 'ativa'),           -- João tem 2 contas
(2, 15000.00, 'ativa'),
(3, -100.00, 'ativa'),          -- saldo negativo (suspeito)
(4, 300.00, 'bloqueada'),
(5, 50.00, 'ativa'),
(5, 20.00, 'ativa'),
(5, 10.00, 'ativa');            -- Pedro com várias contas (possível laranja)


insert into transacoes (fk_conta_origem, fk_conta_destino, valor, data_transacao)
values
(1, 3, 12000.00, '2026-03-01 10:00:00'), -- alto valor
(3, 1, 11500.00, '2026-03-01 11:00:00'), -- troca suspeita
(2, 4, 500.00, '2026-03-02 09:00:00'),
(2, 4, 600.00, '2026-03-02 09:05:00'),
(2, 4, 700.00, '2026-03-02 09:10:00'),
(2, 4, 800.00, '2026-03-02 09:15:00'),
(2, 4, 900.00, '2026-03-02 09:20:00'), -- muitas transações em pouco tempo
(6, 6, 1000.00, '2026-03-03 14:00:00'), -- auto-transferência
(7, 1, 20000.00, '2026-03-04 16:00:00'), -- entrada alta
(1, 8, 20000.00, '2026-03-04 16:10:00'); -- saída imediata (comportamento suspeito)
