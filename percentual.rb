# Definindo os valores de faturamento por estado
faturamento = {
    "SP" => 67836.43,
    "RJ" => 36678.66,
    "MG" => 29229.88,
    "ES" => 27165.48,
    "Outros" => 19849.53
}

# Calculando o faturamento total
faturamento_total = faturamento.values.sum

# Calculando e exibindo o percentual de representação de cada estado
faturamento.each do |estado, valor|
    percentual = (valor / faturamento_total) * 100
    puts "Estado: #{estado} - Percentual: #{percentual.round(2)}%"
end