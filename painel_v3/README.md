# Painel v3 — Inteligência Geográfica de Acidentes

Versão independente do painel, construída sobre `base/acidentes_tac_tsac.csv` (68.231 registros de 2025). A pasta contém uma cópia UTF-8 do CSV para manter a aplicação executável isoladamente. O arquivo original na pasta `base` não foi modificado. Como a pasta `painel_v2` não estava presente neste checkout, esta evolução foi criada em `painel_v3`; o painel atual na raiz permanece preservado.

## Como iniciar

No Windows, dê dois cliques em `Iniciar_Painel_v3.bat`. O arquivo abre o painel em `http://127.0.0.1:8092` e mantém o servidor ativo na janela do terminal. Feche a janela para encerrar. É necessário ter Python 3 instalado e conexão à internet para carregar as bibliotecas JavaScript e os tiles do mapa.

## Conteúdo

- `index.html`: painel interativo com mapa principal, filtros múltiplos pesquisáveis, cartões, gráficos, área de seleção espacial e controles de camadas.
- `logo/PNG.png`: cópia local da identidade visual usada no cabeçalho.
- `data/acidentes_tac_tsac.csv`: cópia UTF-8 da base original, sem alteração das colunas ou linhas.

O painel conta ocorrências únicas por `id` (com `fid` como alternativa), usa `lat_4674` e `long_4674` para o mapa, e trata coordenadas ausentes ou inválidas sem excluir o registro dos totais. `tsac_pnct` representa a Taxa de Severidade e é usado como peso proporcional no Kernel, com normalização apenas para o intervalo técnico da camada visual; médias e cartões usam os valores originais.

O painel tem duas páginas: **Mapa e indicadores** e **Análises estatísticas e cruzamentos**. Na primeira, filtros e cartões ficam na lateral e o mapa ocupa a área principal em proporção próxima de 1:1. Na segunda, os gráficos aparecem juntos, com rolagem para permitir a leitura dos detalhes. Os filtros permanecem aplicados ao alternar entre as páginas.
