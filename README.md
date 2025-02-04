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
| order_id          | ID de um pedido                                            | BIGINT        |
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



