---
title: "Bases de dados"
img: "img/conteudo/dados.png"
summary: "Onde estão os dados para fazer jurimetria?"
ordem: "2"
---

A jurimetria é realizada a partir da análise estatística de dados jurídicos. Mas onde estão esses dados e como montar uma base para minha análise?

## Como montar uma base

A construção de bases de de dados do judiciário sempre segue dois passos: listagem de processos e extração dos dados, com a aplicação de filtros de escopo. Abaixo, detalhamos esses casos.

### Listagem de processos

A listagem de processos é a tarefa de obter os números identificadores de todos os processos que fazem parte de uma pesquisa. Nesse sentido, existem dois tipos comuns de estudos jurimétricos: prospectivo e retrospectivo. É importante separar esses tipos de estudo tanto pela matéria desenvolvida quanto pelas fontes de dados disponíveis.

Estudo **prospectivo** é o estudo que acompanha o processo judicial desde a data de distribuição até o fim. O fim pode ser marcado pela data da sentença, acórdão, ou outro evento de interesse. Ou seja, os casos são indexados pela data de nascimento, e acompanhados até a data de sua morte. Em muitos casos, os processos ainda não atingiram o fim no momento da realização do estudo. 

Estudo **retrospectivo** é o estudo que levanta processos que acabaram (por sentença ou por acórdão) e analisa suas características. Ou seja, os casos são indexados pela data de morte. Para listar processos dessa forma, geralmente utilizamos as **consultas de jurisprudência** disponíveis nos tribunais.

A Figura abaixo mostra os diferentes escopos. Esse diagrama foi utilizado para ilustrar as decisões metodológicas tomadas em nosso projeto sobre [o tempo dos processos de homicídio](/cases/homicidios).

- ( 1) Prospectivo e retrospectivo.
- ( 2) Apenas prospectivo.
- ( 3) Apenas retrospectivo.
- ( 4) Nenhum dos dois, mas poderia ser capturado por atividade no período.
- (5 e 6) fora do escopo.
- ( 7) Nenhum dos dois tipos e não poderia ser capturado (ficou inativo no período).

<img src="/img/conteudo/tempos.png" width="60%">

Atualmente, existem três formas diferentes de listar processos judiciais em estudos prospectivos. O primeiro envolve a composição de ofícios para obtenção de dados diretamente dos tribunais. O segundo envolve a obtenção de listas de processos nos Diários de Justiça Eletrônicos (DJEs). Finalmente, o terceiro envolve a amostragem aleatória de números de processos. 

### Filtros de escopo

Obtida a lista de processos, a extração dos dados de processos segue três passos. O primeiro é buscar cada número de processo da lista no sistema do tribunal, salvando os resultados em arquivos brutos. O segundo é aplicar algoritmos para leitura dos dados brutos, transformando-os em conjunto de bases organizadas. Essas bases possuem quatro blocos principais de informações, descritas a seguir. 

- __Informações básicas__: contém classe, assunto, vara, comarca, status, indicador de processo digital, local físico, entre outras. 

- __Partes__: contém nomes dos autores e dos réus, advogados e forma de participação.  

- __Movimentações__: contém datas, títulos e conteúdo de todas as movimentações do processo. São movimentações desde despachos simples, remessas e conclusos até ata de audiências e sentenças completas.

- __Documentos__: contém todos os autos do processo, incluindo petição inicial, contestação e sentenças. Os documentos nem sempre estão disponíveis, e podem exigir acessos especiais de advogado ou pesquisador, obtido através de convênio com o tribunal. 

Obtida a base de dados de processos, podemos seguir com a aplicação de **filtros de escopo**, para que a base de dados final corresponda aos casos de interesse da pesquisa. Os filtros de escopo podem seguir diversas regras, envolvendo desde filtros simples com palavras-chave até análises complexas que precisam de verificação manual ou modelagem estatística sofisticada, como modelos de processamento de linguagem natural.

<img src="/img/conteudo/classificacao.png" width="60%">

## Bases disponíveis

Fazer um levantamento no judiciário do zero é uma tarefa bastante trabalhosa. Por isso, listamos abaixo algumas alternativas, que podem auxiliar em pesquisas mais simples.

### Painéis do CNJ

O Conselho Nacional de Justiça (CNJ) disponibiliza painéis interativo contendo informações agregadas de movimentação processual. Os painéis mais importantes são:

- **Justiça em Números**: contém os dados que compõem o relatório justiça em números. É possível fazer diversos cruzamentos e levantar dados como volume de processos distribuídos por assunto, em cada tribunal e ano. A desvantagem dessa base é que ela é disponibilizada no nível de tribunal, não sendo possível fazer análises por vara, por exemplo. A base de dados completa também está disponível [neste link](https://www.cnj.jus.br/pesquisas-judiciarias/justica-em-numeros/base-de-dados/).

- **Módulo de produtividade mensal**:

> [**Acesse os paineis do CNJ aqui**](https://www.cnj.jus.br/pesquisas-judiciarias/paineis-cnj/)

### Dados disponibilizados pela ABJ

A ABJ também disponibiliza algumas bases de dados para pessoas interessadas em fazer jurimetria

- O pacote [{abjData}](https://abjur.github.io/abjData) contém dados utilizados frequentemente em análises jurimétricas, como dados de municípios e informações sobre as Tabelas Processuais Unificadas.
- O pacote [{abjMaps}](https://abjur.github.io/abjMaps) contém a relação de municípios e comarcas na Justiça Estadual, para alguns estados brasileiros.
- Também disponibilizamos exclusivamente a nossos associados bases de dados da jurisprudência do TJSP e listas de processos extraídas dos Diários de Justiça Eletrônicos.

Se estiver com dúvidas qual seria o passo-a-passo específico para obter uma base de dados de seu interesse, [entre em contato](/contato) no pelo nosso canal de relacionamento.
