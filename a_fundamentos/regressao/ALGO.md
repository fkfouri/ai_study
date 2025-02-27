# Algorítimo de Regressão

## Variáveis

Independetes ou exploratória: é a variável que explica o que queremos prever.
Dependentes: é o que queremos prever.

![alt text](image-5.png)

![alt text](image-6.png)

![alt text](image-7.png)

Na regressão linear supoe que existe uma certa linearidade (não perfeita) entre os valores. Matemática diz que pode ser criado uma linha que se encaixe nos pontos (melhor ajuste). O modelo busca uma generalização.

![alt text](image-8.png)

## Correlação (R)
- Mostra a força e a direção da relação entre as variáveis.
- Poder ser um valor entre -1 e 1.
- A Correlação de A~B é a mesma que B~A.

![alt text](image-9.png)


<div id="plotly-div"></div>
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<script>
    var data = [{
        x: [1, 2, 3, 4],
        y: [10, 15, 13, 17],
        type: 'scatter'
    }];
    Plotly.newPlot('plotly-div', data);
</script>