🚀 Desafio Técnico – Estágio eSigma
Este repositório contém os projetos desenvolvidos para o desafio técnico da vaga de estágio na empresa eSigma.

📂 Tarefas do Projeto
✅ Calculadora – Aplicação básica para operações matemáticas.
✅ Conversação e envio de mensagens entre telas – Comunicação entre diferentes formulários no Delphi.
✅ CRUD de Funcionários – Sistema para cadastrar, visualizar, atualizar e excluir funcionários.
Caso tenha dúvidas ou sugestões, fique à vontade para contribuir! 🚀🎯

📌 Instruções para rodar o CRUD de Funcionários
Criar o banco de dados e a tabela
Antes de rodar a aplicação, execute o seguinte script SQL no seu MySQL:

```sql
CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE funcionarios (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL
);
```
Configurar a biblioteca libmysql.dll

Copie o caminho do arquivo libmysql.dll (presente no repositório).
No Delphi, acesse o componente FDPhysMySQLDriverLink1.
No campo VendorLib, cole o caminho do arquivo libmysql.dll.
