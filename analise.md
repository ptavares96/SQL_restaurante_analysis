# Análise Exploratória dos Dados
Eu escrevi de uma forma que facilita a leitura sobre a análise. Para as consultas que mostravam poucos resultados, coloquei o número em negrito no parágrafo. Para consultas mais longas, eu coloquei a tabela para comentar. 
Para as consultas que mostraram uma tabela com muitos dados, eu limitei a quantidade para mostrar como ficou. Mas eu deixei os arquivos csv em uma pasta.
Por último, eu decidi não mostrar as consultas aqui. No entanto, elas estão disponíveis nesse repositório. 

## Gerais

O período que corresponde esses dados são de **3 meses**, correspondendo aos primeiros meses do ano. No total foram realizadas **12.097 pedidos** nesse restaurante.
No restaurante é servido **4 tipos de culinária**: Italiana, Asiática, Mexicana e Americana. Segue os preços médios dos pratos de cada culinária:
| Média de Preço (USD) | Tipo de Cozinha |
|----------------------|----------------|
| 16.75               | Italian        |
| 13.48               | Asian          |
| 11.80               | Mexican        |
| 10.07               | American       |

A tabela a seguir apresenta o total de pedidos realizados nos dias das semana de cada mês.
| Média de Pedidos | Mês | Dia da Semana |
|------------------|-----|--------------|
| 716             | 1   | Sunday       |
| 716             | 1   | Monday       |
| 695             | 1   | Tuesday      |
| 439             | 1   | Wednesday    |
| 484             | 1   | Thursday     |
| 541             | 1   | Friday       |
| 513             | 1   | Saturday     |
| 526             | 2   | Wednesday    |
| 514             | 2   | Thursday     |
| 528             | 2   | Friday       |
| 582             | 2   | Saturday     |
| 515             | 2   | Sunday       |
| 646             | 2   | Monday       |
| 540             | 2   | Tuesday      |
| 557             | 3   | Wednesday    |
| 669             | 3   | Thursday     |
| 733             | 3   | Friday       |
| 504             | 3   | Saturday     |
| 528             | 3   | Sunday       |
| 626             | 3   | Monday       |
| 525             | 3   | Tuesday      |

Na tabela pode ser visto que domingos e segundas-feiras do mês de Janeiro têm a maior média de pedidos (716) e quartas-feiras a menor (439).
Em março, as sextas-feiras teve uma média 733 pedidos, indicando alta na demanda antes do fim de semana, enquanto os sábados a média caiu para 504. 
No mês de Janeiro, o início da semana é mais agitado, enquanto no mês Março a demanda aumenta durante a semana, chegando ao auge na sexta. 
Quartas-feiras têm poucos pedidos, oferecendo uma chance para promoções ou estratégias de engajamento.

A seguir a tabela com a média de clientes que frequentaram esse restaurante nos 3 meses durante a semana. 
| Dia da Semana | Média de Clientes |
|--------------|------------------|
| Monday       | 294              |
| Sunday       | 264              |
| Friday       | 261              |
| Tuesday      | 253              |
| Thursday     | 246              |
| Saturday     | 236              |
| Wednesday    | 227              |

É visto na tabela que segunda-feira apresenta a maior média de clientes (294), sugerindo um aumento no movimento no início da semana. Domingo (264) e sexta-feira (261) têm alta demanda.
Quarta-feira (227) e sábado (236) têm os menores números.

## Sobre os clientes

A primeira consulta sobre os clientes é uma tabela sobre a quantidade total de pedido de cada cliente, útil para se em algum momento quiser procurar sobre um cliente específico. A tabela se encontra na pasta de csvs. Destaco que a maior quantidade que um cliente já pediu, nesses três meses, foi **14 pedidos** e o mínimo de **1 pedido**.

Em média temos uma maior movimentação do restaurante pela manhã, uma média **224 clientes** e durante a tarde essa média cai para **31 clientes**. 

A terceira consulta relacionada a o assunto é sobre o gasto dos clientes, separei uma tabela que mostra o valor médio que cada cliente gastou no restaures. Abaixo, apresento uma parte da tabela, ela completa está na pasta CSVS. 

| Cliente | Média de Valor Gasto por Pedido (USD) |
|---------|--------------------------------------|
| 1       | 17.95                                |
| 2       | 12.89                                |
| 3       | 12.45                                |
| 4       | 12.95                                |
| 5       | 12.95                                |
| 6       | 10.98                                |
| 7       | 9.00                                 |
| 8       | 9.00                                 |
| 9       | 14.69                                |
| 10      | 11.25                                |

## Sobre itens do menu

O restaurante serve **32 pratos** diferentes, dividos nas quatro categorias Italiana, Asiática, Mexicana e Americana.
O item mais barato do menu é o Edamame um prato Asiático que custa $5,00. O mais caro é Shrimp Scampi da culinária Italiana que custa $19,95. 

## Sobre vendas

Sobre o faturamente mensal, no mês de Janeiro teve-se um total de $53.816,95, em Fevereiro $50.790,35 e em Março o total de 54.610,60. Assim sendo Março o mês de maior faturamento. 

Em ordem decrescente a tabela abaixo mostra o faturamento total dos três meses separados por dia da semana. 

| Dia da Semana | Total de Faturamento (USD) |
|----------------|---------------------------|
| Monday         | 26,007.45                 |
| Friday         | 23,707.95                 |
| Tuesday        | 23,356.00                 |
| Sunday         | 23,226.45                 |
| Thursday       | 21,846.85                 |
| Saturday       | 21,170.90                 |
| Wednesday      | 19,902.30                 |

Sendo Segunda o dia mais rentável e Quarta o dia com menos faturamento. 

A tabela a seguir contém o total de vendas por periodo do dia e os dias da semana de cada mês. 

| Número de Vendas | Período do Dia | Dia da Semana | Mês |
|------------------|----------------|---------------|-----|
| 293              | Morning        | Monday        | 1   |
| 287              | Morning        | Tuesday       | 1   |
| 282              | Morning        | Sunday        | 1   |
| 267              | Morning        | Friday        | 3   |
| 260              | Morning        | Thursday      | 3   |
| 246              | Morning        | Monday        | 2   |
| 234              | Morning        | Monday        | 3   |
| 228              | Morning        | Wednesday     | 3   |
| 216              | Morning        | Wednesday     | 2   |
| 213              | Morning        | Saturday      | 2   |
| 209              | Morning        | Tuesday       | 2   |
| 208              | Morning        | Friday        | 1   |
| 208              | Morning        | Tuesday       | 3   |
| 207              | Morning        | Sunday        | 3   |
| 199              | Morning        | Friday        | 2   |
| 199              | Morning        | Sunday        | 2   |
| 199              | Morning        | Saturday      | 3   |
| 190              | Morning        | Thursday      | 1   |
| 186              | Morning        | Saturday      | 1   |
| 186              | Morning        | Thursday      | 2   |
| 183              | Morning        | Wednesday     | 1   |
| 45               | Afternoon      | Sunday        | 1   |
| 41               | Afternoon      | Thursday      | 3   |
| 40               | Afternoon      | Friday        | 2   |
| 40               | Afternoon      | Monday        | 3   |
| 39               | Afternoon      | Saturday      | 3   |
| 37               | Afternoon      | Friday        | 3   |
| 36               | Afternoon      | Monday        | 1   |
| 36               | Afternoon      | Saturday      | 2   |
| 35               | Afternoon      | Saturday      | 1   |
| 33               | Afternoon      | Thursday      | 2   |
| 33               | Afternoon      | Friday        | 1   |
| 32               | Afternoon      | Monday        | 2   |
| 30               | Afternoon      | Sunday        | 3   |
| 29               | Afternoon      | Thursday      | 1   |
| 29               | Afternoon      | Sunday        | 2   |
| 23               | Afternoon      | Wednesday     | 3   |
| 22               | Afternoon      | Tuesday       | 2   |
| 20               | Afternoon      | Tuesday       | 3   |
| 15               | Afternoon      | Wednesday     | 2   |
| 15               | Afternoon      | Wednesday     | 1   |
| 13               | Afternoon      | Tuesday       | 1   |

Uma consulta interessante é identificar uma classificação de itens pedidos, podendo visualizar o item mais pedido e o menos pedido pelos clientes. Esses dados estão presentes na tabela a seguir. 

| Quantidade de Vezes Pedida | Nome do Prato            | Categoria |
|----------------------------|--------------------------|-----------|
| 622                        | Hamburger                | American  |
| 620                        | Edamame                  | Asian     |
| 588                        | Korean Beef Bowl         | Asian     |
| 583                        | Cheeseburger             | American  |
| 571                        | French Fries             | American  |
| 562                        | Tofu Pad Thai            | Asian     |
| 489                        | Steak Torta              | Mexican   |
| 470                        | Spaghetti & Meatballs    | Italian   |
| 463                        | Mac & Cheese             | American  |
| 461                        | Chips & Salsa            | Mexican   |
| 456                        | Orange Chicken           | Asian     |
| 455                        | Chicken Burrito          | Mexican   |
| 420                        | Eggplant Parmesan        | Italian   |
| 379                        | Chicken Torta            | Mexican   |
| 367                        | Spaghetti                | Italian   |
| 364                        | Chicken Parmesan         | Italian   |
| 360                        | Pork Ramen               | Asian     |
| 359                        | Mushroom Ravioli         | Italian   |
| 355                        | California Roll          | Asian     |
| 354                        | Steak Burrito            | Mexican   |
| 324                        | Salmon Roll              | Asian     |
| 273                        | Meat Lasagna             | Italian   |
| 257                        | Hot Dog                  | American  |
| 249                        | Fettuccine Alfredo       | Italian   |
| 239                        | Shrimp Scampi            | Italian   |
| 238                        | Veggie Burger            | American  |
| 237                        | Chips & Guacamole        | Mexican   |
| 233                        | Cheese Quesadillas       | Mexican   |
| 214                        | Steak Tacos              | Mexican   |
| 207                        | Cheese Lasagna           | Italian   |
| 205                        | Potstickers              | Asian     |
| 123                        | Chicken Tacos            | Mexican   |

Sendo Hamburgues o item mais pedido e Chicken Tacos o menos pedido. 

Porém, procurando descobrir qual prato gera mais receita, realizei uma consulta sobre isso em uma ordem descrescente. A tabela completa está na pasta CSVS. Aqui destaco os três pratos que geraram mais receitas nesses meses. 

| Prato                  | Total Faturado (USD) |
|------------------------|----------------------|
| Korean Beef Bowl       | 10,554.60            |
| Spaghetti & Meatballs  | 8,436.50             |
| Tofu Pad Thai          | 8,149.00             |


Seguindo pela consulta da receita por categoria, para verificar qual culinária está sendo mais rentável. 

| Culinária | Total Faturado (USD) |
|-----------|----------------------|
| Italian   | 49,462.70            |
| Asian     | 46,720.65            |
| Mexican   | 34,796.80            |
| American  | 28,237.75            |

A última consulta foi a criação de uma coluna com a classificando a partir da média de vendas indicando "Good", "Bad" ou "Avarage". A tabela completa está na pasta de csvs. Segue uma parte. 

| Dia        | Faturamento do Dia (USD) | Performance |
|------------|--------------------------|-------------|
| 2023-01-01 | 2,091.60                 | Good        |
| 2023-01-02 | 1,994.70                 | Good        |
| 2023-01-03 | 1,983.70                 | Good        |
| 2023-01-04 | 1,356.85                 | Bad         |
| 2023-01-05 | 1,589.85                 | Bad         |
| 2023-01-06 | 1,888.00                 | Good        |
| 2023-01-07 | 1,691.10                 | Bad         |
| 2023-01-08 | 2,258.10                 | Good        |
| 2023-01-09 | 1,540.40                 | Bad         |
| 2023-01-10 | 1,866.40                 | Good        |


































