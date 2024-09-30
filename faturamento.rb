require 'json'

# JSON com os dados de faturamento mensal
faturamento_json = '[
    {"dia": 1, "valor": 100.0},
    {"dia": 2, "valor": 200.0},
    {"dia": 3, "valor": 0.0},
    {"dia": 4, "valor": 300.0},
    {"dia": 5, "valor": 0.0},
    {"dia": 6, "valor": 400.0},
    {"dia": 7, "valor": 0.0},
    {"dia": 8, "valor": 500.0},
    {"dia": 9, "valor": 0.0},
    {"dia": 10, "valor": 600.0}
]'

# Parse do JSON
faturamento = JSON.parse(faturamento_json)

# Filtra os dias com faturamento maior que zero
faturamento_filtrado = faturamento.select { |dia| dia["valor"] > 0 }

# Calcula o menor e maior valor de faturamento
menor_faturamento = faturamento_filtrado.min_by { |dia| dia["valor"] }["valor"]
maior_faturamento = faturamento_filtrado.max_by { |dia| dia["valor"] }["valor"]

# Calcula a média mensal de faturamento
media_mensal = faturamento_filtrado.sum { |dia| dia["valor"] } / faturamento_filtrado.size

# Calcula o número de dias com faturamento superior à média mensal
dias_acima_da_media = faturamento_filtrado.count { |dia| dia["valor"] > media_mensal }

# Exibe os resultados
puts "Menor valor de faturamento: #{menor_faturamento}"
puts "Maior valor de faturamento: #{maior_faturamento}"
puts "Número de dias com faturamento acima da média: #{dias_acima_da_media}"