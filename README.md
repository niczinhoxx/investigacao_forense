# 🕵️‍♂️ Projeto SQL Forense - Investigação de Transações Financeiras

## 📌 Sobre o Projeto
Este projeto consiste na simulação de uma investigação forense em um banco de dados financeiro, utilizando PostgreSQL.

O objetivo foi analisar transações e identificar possíveis comportamentos suspeitos, como movimentações anômalas, padrões incomuns e inconsistências nos dados.

A proposta simula um cenário real onde um analista ou perito em TI precisa extrair evidências a partir de dados estruturados.

---

## 🧱 Estrutura do Banco de Dados

O banco foi modelado com três entidades principais:

- **usuarios** → informações dos usuários do sistema  
- **contas** → contas bancárias vinculadas aos usuários  
- **transacoes** → movimentações financeiras entre contas  

### 🔗 Relacionamentos
- Um usuário pode possuir múltiplas contas  
- As transações conectam contas de origem e destino  

---

## ⚙️ Tecnologias Utilizadas

- PostgreSQL  
- SQL (DDL e DML)  

---

## 🔍 Análises Realizadas

Durante o projeto, foram desenvolvidas consultas com foco investigativo:

- 💸 Identificação de transações com valores elevados  
- 📉 Detecção de contas com saldo negativo  
- 🧾 Análise de usuários com múltiplas contas  
- ⚡ Identificação de alta frequência de transações em curto período  
- 🔁 Detecção de movimentações repetidas entre contas  
- 🪞 Identificação de auto-transferências  

---

## 🧠 Abordagem Forense

O projeto foi desenvolvido com base em uma lógica investigativa, onde os dados não são apenas consultados, mas analisados com foco em:

- Identificação de padrões suspeitos  
- Correlação entre eventos  
- Interpretação de comportamento financeiro  
- Extração de possíveis evidências digitais  

---

## 🚀 Possíveis Melhorias

- Implementação de regras automatizadas de detecção de fraude  
- Criação de score de risco por conta  
- Análise por janela de tempo (ex: últimas 24h)  
- Visualização dos dados com dashboards  
- Integração com ferramentas de análise forense  

---

## 📂 Como Executar o Projeto

1. Criar o banco de dados no PostgreSQL  
2. Executar os scripts de criação das tabelas  
3. Inserir os dados com os comandos `INSERT`  
4. Executar as consultas SQL para análise  

---

## 🎯 Objetivo Profissional

Este projeto faz parte da minha evolução na área de tecnologia, com foco em:

- Forense Digital  
- Segurança da Informação  
- Análise de Dados  
- Banco de Dados  

---

## 📬 Contato

Estou aberto a conexões, troca de conhecimento e oportunidades na área de tecnologia.

