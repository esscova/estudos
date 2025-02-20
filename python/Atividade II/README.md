### **1. Análise de Dados**

**Exercício 1.1:**
Carregue o dataset `iris` da biblioteca `seaborn`. Calcule as seguintes estatísticas descritivas para cada coluna numérica:

- Média
- Mediana
- Desvio padrão
- Valor mínimo e máximo
- Quantis (25%, 50%, 75%)

**Exercício 1.2:**
Crie uma função que receba um DataFrame e retorne um resumo estatístico personalizado, incluindo:

- Número de valores ausentes por coluna
- Número de valores únicos por coluna
- Tipos de dados de cada coluna

---

### **2. Exploração de Dados**

**Exercício 2.1:**
Utilize o dataset `tips` da biblioteca `seaborn`. Responda às seguintes perguntas:

- Qual é a média de gorjeta (`tip`) por dia da semana?
- Qual é a proporção de fumantes (`smoker`) vs. não fumantes?
- Existe correlação entre o valor total da conta (`total_bill`) e a gorjeta (`tip`)?

**Exercício 2.2:**
Carregue o dataset `titanic` da biblioteca `seaborn`. Explore os dados para responder:

- Qual é a taxa de sobrevivência por sexo?
- Qual é a distribuição de idades dos passageiros?
- Há relação entre a classe da cabine (`pclass`) e a taxa de sobrevivência?

---

### **3. Visualização de Dados**

**Exercício 3.1:**
Usando o dataset `iris`, crie os seguintes gráficos:

- Um histograma para a distribuição de comprimento das pétalas (`petal_length`).
- Um gráfico de dispersão (`scatter plot`) entre comprimento e largura das pétalas.
- Um boxplot para comparar a distribuição de comprimento das sépalas (`sepal_length`) por espécie.

**Exercício 3.2:**
Com o dataset `titanic`, crie visualizações para:

- Um gráfico de barras mostrando a contagem de sobreviventes vs. não sobreviventes.
- Um heatmap da matriz de correlação entre as variáveis numéricas.
- Um gráfico de violino para comparar a distribuição de idades por classe de cabine.

---

### **4. Engenharia de Dados**

**Exercício 4.1:**
Carregue o dataset `titanic` e realize as seguintes transformações:

- Crie uma nova coluna `family_size` que seja a soma de `sibsp` (irmãos/cônjuges) e `parch` (pais/filhos).
- Converta a coluna `sex` em valores numéricos (0 para masculino e 1 para feminino).
- Preencha os valores ausentes na coluna `age` com a mediana da idade.

**Exercício 4.2:**
Crie uma função que receba um DataFrame e:

- Padronize as colunas numéricas (subtraia a média e divida pelo desvio padrão).
- Aplique codificação one-hot em colunas categóricas.

---

### **5. Mineração de Dados**

**Exercício 5.1:**
Utilize o dataset `mall_customers.csv` (disponível em muitos repositórios de datasets). Realize uma análise de clusters usando o algoritmo K-Means para agrupar os clientes com base em `Annual Income (k$)` e `Spending Score (1-100)`. Determine o número ideal de clusters usando o método do cotovelo.

**Exercício 5.2:**
Aplique o algoritmo Apriori para encontrar regras de associação no dataset `groceries.csv` (disponível em repositórios de datasets). Defina um suporte mínimo de 0.01 e uma confiança mínima de 0.3.

---

### **6. Machine Learning**

**Exercício 6.1:**
Utilize o dataset `iris` para treinar um modelo de classificação usando o algoritmo K-Nearest Neighbors (KNN). Divida os dados em treino e teste, avalie a acurácia do modelo e mostre a matriz de confusão.

**Exercício 6.2:**
Com o dataset `boston` da biblioteca `sklearn`, treine um modelo de regressão linear para prever o valor médio das casas (`MEDV`). Avalie o modelo usando métricas como RMSE e R².

**Exercício 6.3:**
Utilize o dataset `titanic` para treinar um modelo de árvore de decisão. Realize a validação cruzada e ajuste os hiperparâmetros usando GridSearchCV.
