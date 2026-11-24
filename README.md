# 🤖 AgenteDex — Gerenciador de Agentes de IA

> Projeto Integrado Multidisciplinar (PIM) — Faculdade UNIP, Ribeirão Preto/SP

Sistema de cadastro e edição de agentes de inteligência artificial desenvolvido em C para rodar no terminal. Cada agente possui ID único, categoria, nome, script e nota, e os dados ficam salvos em arquivo de texto para não se perderem ao fechar o programa.

---

## 📋 Funcionalidades

- **Cadastro de agentes** — Registro com categoria, nome, script e nota
- **Listagem geral** — Exibe todos os agentes e a média geral das notas
- **Busca por ID** — Localiza o agente pelo identificador e permite editar ou excluir
- **Busca por nome** — Localiza o agente pelo nome e permite editar ou excluir
- **Busca por categoria** — Lista os agentes da categoria escolhida com a média de notas dela
- **Edição** — Altera categoria, nome, script ou nota de um agente existente
- **Exclusão** — Remove o agente do sistema
- **Persistência de dados** — Carrega o arquivo ao abrir e salva a cada alteração
- **Termo de condições de uso** — Exibido na primeira execução

---

## 🗃️ Categorias Disponíveis

| Código | Categoria     |
| :----: | ------------- |
| 0      | ADMINISTRACAO |
| 1      | PRODUCAO      |
| 2      | CLIENTE       |

---

## ✅ Regras e Validações

| Campo     | Regra                                                          |
| --------- | -------------------------------------------------------------- |
| Nome      | Obrigatório, até 80 caracteres, salvo em MAIÚSCULAS            |
| Script    | Obrigatório, até 1000 caracteres                               |
| Nota      | Número de 0 a 5 (aceita decimais)                              |
| Categoria | 0, 1 ou 2                                                      |
| Limite    | Até 50 agentes cadastrados                                     |
| ID        | Sequencial a partir de 1, não é reaproveitado após uma exclusão |

> Entradas inválidas são rejeitadas e o programa solicita o dado novamente. A edição de nome e script segue as mesmas validações do cadastro.

---

## 🗂️ Estrutura do Projeto

```
📦 AgenteDex/
├── pimII.c        # Código-fonte completo do sistema
├── agentes.txt    # Banco de dados local (gerado automaticamente)
├── termo.txt      # Registro de aceite do termo (gerado automaticamente)
└── README.md
```

---

## ▶️ Como executar

**Pré-requisitos:** Windows e um compilador C, como o [MinGW-w64 (GCC)](https://www.mingw-w64.org/)

```
# Clone o repositório
git clone https://github.com/AntonioJoseAraujo/AgenteDex.git

# Acesse a pasta do projeto
cd AgenteDex

# Compile o programa
gcc pimII.c -o pimII

# Execute o programa
./pimII
```

> Execute sempre a partir da mesma pasta: `agentes.txt` e `termo.txt` são criados no diretório de execução.
>
> Para rodar em Linux ou macOS, troque `#include <windows.h>` por `#include <unistd.h>` e `Sleep(1000)` por `sleep(1)`.

---

## 🧭 Menu Principal

```
========================================
               AgenteDex
========================================
1 - Cadastrar agente
2 - Listar todos os agentes
3 - Buscar pelo ID
4 - Buscar pelo Nome
5 - Buscar por categoria
0 - Sair
```

Na primeira execução, o termo de uso é exibido: digite `1` para aceitar ou `0` para recusar (o programa encerra). Ao encontrar um agente nas buscas por ID ou nome, é possível **editar**, **excluir** ou voltar ao menu.

---

## 💾 Armazenamento dos Dados

Os dados ficam em `agentes.txt`. A primeira linha guarda a quantidade de agentes, a segunda o próximo ID disponível, e cada agente ocupa 5 linhas (ID, categoria, nome, script e nota):

```
2
3
1
0
ASSISTENTE DE RH
Responde duvidas sobre folha de pagamento e beneficios.
4.5
2
2
ATENDENTE VIRTUAL
Atende clientes no chat e encaminha chamados.
4.0
```

---

## 🛠️ Tecnologias Utilizadas

- **C** — Linguagem principal
- **Bibliotecas:** `stdio.h`, `stdlib.h`, `string.h`, `ctype.h` e `windows.h`
- **Armazenamento:** arquivos `.txt` como banco de dados local

---

## 👨‍💻 Sobre o Projeto

Este sistema foi desenvolvido como parte do **Projeto Integrado Multidisciplinar (PIM)** do curso de **Análise e Desenvolvimento de Sistemas** da **Universidade Paulista (UNIP)** — unidade Ribeirão Preto/SP.

O projeto foi feito **sem `struct`**: todos os dados são guardados em vetores e matrizes paralelos, acessados pelo mesmo índice. O objetivo foi praticar vetores e matrizes, ponteiros, leitura e escrita de arquivos, validação de entradas e modularização do código em funções.

---

## 👥 Autores

- Antônio José Araújo
- Wesley Alexandre dos Santos Amancio
- Rafael

---

## 📄 Licença

Este projeto é de uso acadêmico.
