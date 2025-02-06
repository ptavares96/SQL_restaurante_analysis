# Análise de Dados com SQL - Pedidos de um restaurante
## Introdução 
No ramo de restaurantes, saber o que os clientes consomem é muito importante para o sucesso. Este projeto vê questões sobre como o consumeto dos clientes em determinadas categorias, de culinária e dias da semana. Faço uma análise que me responda peguntas como: "Qual tipo de comida as pessoas mais gostam?", "Qual é o valor médio que se vende por dia?" "Quais dias da semana têm o maior número de vendas?" Ao olhar para essas questões, a meta é dar ideias boas que ajudem a fazer melhores decisões no restaurante. Isso também serve para melhorar o cardápio otimizando as vendas dos lugares em relação custo e receita.

## Dados
Este conjunto de [dados](https://mavenanalytics.io/data-playground?order=date_added%2Cdesc&search=restaurant) vem do Maven Analytics Data Playground. Este conjunto de dados contém informações para um trimestre, que são os meses de janeiro, fevereiro e março. A tabela de detalhes do pedido (`order_details`) tem 12.097 linhas. Já a tabela de itens do menu (`menu_items`)tem 32 linhas.

Tabela `menu_items`:
| Coluna            | Descrição                                              | Tipo de Dado  |
|-------------------|--------------------------------------------------------|---------------|
| menu_item_id      | ID único de um item do menu                            | BIGINT        |
| item_name         | Nome de um item do menu                                | VARCHAR(30)   |
| category          | Categoria / tipo de culinária do item do menu          | VARCHAR(30)   |
| price             | Preço do item do menu em USD                           | DECIMAIL(4,2) |

Tabela `order_details`:
| Coluna            | Descrição                                                   | Tipo de Dado  |
|-------------------|-------------------------------------------------------------|---------------|
| order_details_id  | ID único de um item em um pedido                            | BIGINT        |
| order_id          | ID de um pedido                                             | BIGINT        |
| order_date        | Data em que o pedido foi realizado                          | DATETIME      |
| order_time        | Hora em que o pedido foi realizado                          | DATETIME      |
| item_id           | Chave estrangeira para o `menu_item_id` na tabela Menu_items| BIGINT        |

## Organização do repositório
Este repositório está organizado da seguinte maneira: 

```
├── Dados/                                  # Pasta com os csvs utilizados
│   ├── menu_items.csv                      # Arquivo csv com os dados sobre os items do menu
│   ├── order_details.csv                   # Arquivo csv com os dados com os detalhes dos pedidos
│   ├── restaurant_db_data_dictionary.csv   # Descrição dos dados
│
├── csvs/                                   # CSVs exportados das consultas
│
├── Consultas/                              # Pasta com as consultas SQL
│   ├── Input and table creation.sql        # Criação da base de dados, tabelas
│   ├── create columns.sql                  # Criação de colunas
│   ├── Hour modify.sql                     # Modificação dos dados de tempo (dias, horas, meses, fim de semana...)
│   ├── generic_questions.sql               # Consulta geral e genéria sobre os dados
│   ├── clients_questions.sql               # Consulta correspondente aos clientes
│   ├── menu_questionss.sql                 # Consulta sobre os items vendidos
│   ├── sale_questionss.sql                 # Consulta sobre vendas do restaurante
│  
└── Análise/                                # Pasta com o texto de análise
```

## Metologia

1. Importação dos dados
   a. Criação do banco de dados
   b. Criação das tabelas `menu_items` e `order_details`,  definindo NOT NULL para as colunas.
   c. Importação dos dados com Data Import Wizard.
2. Feature Engineering
   a. Criação da coluna `day_of_week` com os nomes dos dias da semana.
   b. Criação da coluna ` weekday_or_weekend` indicando se é fim de semana ou dia útil.
   c. Criação da coluna `month` indicando o número do mês.
   d. Criação da coluna `period_of_day` indicando se é manhã, tarde ou noite (morning, afternoon ou evening).

3. Análise Exploratória de Dados
   
  Técnicas SQL utilizadas:
  
    - JOIN
    - CASE
    - GROUP BY 
    - ORDER BY 
    - COUNT 
    - Aliases
    - SUM & AVERAGE
    - ROUND
    - CTE
    - Sub Consultas
   
## Perguntas de Negócios

**Perguntas Gerais:**
- Quantos pedidos foram feitos no restaurante até o último dia?
- Qual é o preço médio para cada classe (tipo de culinária)?
- Qual é a média mensal de pedidos?
- Qual é a média diária de clientes que comparecem em cada dia da semana?

**Perguntas dos clientes:**

- Quantos itens de pedido foram solicitados por cada cliente?
- Qual foi a quantidade mínima e a quantidade máxima de itens requisitados?
- Quais são os horários mais movimentados?
- Qual o valor médio gasto por cliente em um pedido?

**Perguntas sobre itens do menu:**

- Qual é o número de itens distintos disponíveis no cardápio deste restaurante?
- Quais tipos de culinária este restaurante disponibiliza?
- Qual é o item mais caro do menu?
- Qual o item mais baratos do menu?

**Perguntas de vendas:**

- Qual foi o faturamento total do restaurante em cada mês?
- Quais são os dias da semana com maior faturamento?
- Qual foi a quantidade de vendas realizadas em cada horário ao longo do dia, por dia da semana?
- Qual é o item mais pedido pelos clientes? E o menos pedido? A que categorias pertenciam?
- Qual é o item do menu que gera mais receita?
- Quais culinárias devemos priorizar no desenvolvimento de mais opções de cardápio fundamentadas nas informações disponíveis?
- Incluir uma coluna para cada dia correspondente, indicando "Bom", "Ruim" ou "Médio". Classifique como "Bom" se o resultado superar a média de vendas e como "Ruim" se for inferior à média de vendas.



































   





