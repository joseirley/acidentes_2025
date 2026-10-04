# Geoportal de acidentes em rodovias federais de Minas Gerais

Dashboard local para explorar os acidentes de 2025 e o indicador `tsac_pnct`.

## Como iniciar

No Windows, dê dois cliques em `Iniciar_Portal.bat`. O script abre o portal no navegador e mantém o servidor local ativo na janela do terminal. Feche essa janela para encerrar o servidor. O Python 3 precisa estar instalado.

O endereço padrão é http://localhost:8080. Se essa porta já estiver ocupada, encerre o outro servidor ou ajuste `PORT` no arquivo BAT.

## Recursos

- Mapa Esri World Street Map, com tiles CARTO como alternativa caso o serviço principal falhe.
- Filtros por município, intervalo de datas, dia da semana, BR, causa, classificação, fase do dia e condição meteorológica.
- Indicadores de acidentes, média da Taxa de Severidade, feridos leves, feridos graves, vítimas fatais e municípios.
- Gráfico mensal do número de acidentes e gráfico dos dez municípios com maior média da Taxa de Severidade no recorte filtrado.
- Marcadores agrupados e mapa de calor (kernel) ponderado pela Taxa de Severidade; filtros atualizam ambos.

Os dados estão em `base/acidentes_tac_tsac_mg_2025_1.geojson`. A página carrega Leaflet, MarkerCluster e Chart.js por CDN, portanto é necessária conexão à internet para bibliotecas e tiles do mapa.
