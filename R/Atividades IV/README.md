### Atividades IV
1.  **Importar, explorar e sumarizar dados**
    - Importar um arquivo .csv para o R.
    - Utilizar `dim()` para verificar as dimensões dos dados.
    - Usar `head()` e `tail()` para visualizar as primeiras e últimas linhas do data frame.
    - Empregar `str()` para examinar os tipos de dados e obter informações sobre as variáveis.
    - Calcular estatísticas descritivas como média, mediana e desvio padrão.

2.  **Visualização de dados**.
    - Criar diferentes tipos de gráficos para visualizar os dados.
    - Gerar gráficos de dispersão para identificar relações entre variáveis.
    - Construir boxplots para identificar outliers e comparar distribuições.
    - Utilizar histogramas e gráficos de densidade para examinar a distribuição de uma única variável.

3.  **Pré-processamento e limpeza de dados**.
    - Identificar e tratar valores faltantes.
    - Converter variáveis para o tipo correto (numérico, fator, etc.).
    - Normalizar ou padronizar dados numéricos.
    - Remover duplicatas ou dados irrelevantes.
    
4.  **Modelagem e Inferência**.
    - Ajustar um modelo linear usando o método dos mínimos quadrados.
    - Dividir os dados em conjuntos de treinamento e teste.
    - Estimar o risco do modelo usando validação cruzada ou data splitting.
    - Avaliar o desempenho do modelo usando métricas apropriadas (RMSE, R², acurácia, etc.).
    - Utilizar regressão linear, árvores de regressão e KNN para regressão.
    - Implementar regressão logística para problemas de classificação.
    
5.  **Algoritmos de Classificação**.
    - Implementar árvores de classificação para análise preditiva.
    - Utilizar o algoritmo Naive Bayes para classificação.
    - Aplicar bagging e florestas aleatórias para melhorar a precisão da classificação.
    - Explorar redes neurais artificiais para tarefas de classificação complexas.
    - Ajustar modelos SVM para classificação com diferentes kernels.

6.  **Manipulação de Dados com dplyr**
    - Crie um data frame com as seguintes colunas: nome (caracteres), idade (numérico), salario (numérico) e cidade (caracteres). Use o pacote dplyr para:
        - Filtrar apenas as pessoas com idade maior que 30 anos.
        - Ordenar o resultado por salário em ordem decrescente.
        - Calcular a média salarial por cidade.
    - Dica: Use funções como filter(), arrange() e group_by() com summarise().

7. **Visualização com ggplot2**

Usando o data frame do Exercício 1 (ou o dataset interno `mtcars`, se preferir), crie:

- Um gráfico de dispersão (scatter plot) mostrando a relação entre `idade` e `salario` (ou `mpg` e `hp` no caso de `mtcars`).
- Adicione cores diferentes para cada `cidade` (ou `cyl` no caso de `mtcars`).
- Inclua uma linha de tendência com `geom_smooth()`.
- Dica: Use o pacote `ggplot2` e explore as camadas (`aes()`, `geom_point()`, etc.).

8. **Análise estatística básica**
- Carregue o dataset `iris` (disponível no R) e:
    - Calcule a média, mediana e desvio padrão do comprimento das pétalas (`Petal.Length`) para cada espécie (`Species`).
    - Use a função `aggregate()` ou `dplyr` para agrupar os dados.
    - Crie um boxplot para visualizar a distribuição de `Petal.Length` por espécie.

    - **Dica:** Funções úteis: `mean()`, `median()`, `sd()`, `boxplot()`.

9. **Tratamento de dados faltantes**

Crie um vetor ou data frame com alguns valores ausentes (use NA). Por exemplo:

```
dados <- data.frame(
  nome = c("Ana", "Bruno", "Clara", "Diego"),
  vendas = c(100, NA, 250, NA)
)
```

- Identifique quais linhas têm valores faltantes.
- Remova as linhas com NA, atribua a um novo dataframe e compare os resultados.
- Substitua os valores NA pela média das vendas não ausentes.

