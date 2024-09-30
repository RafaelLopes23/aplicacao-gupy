def fibonacci_sequence(limit)
    sequence = [0, 1]
    while sequence.last < limit
        sequence << sequence[-1] + sequence[-2]
    end
    sequence
end

def number_in_fibonacci?(number)
    sequence = fibonacci_sequence(number)
    if sequence.include?(number)
        puts "#{number} pertence à sequência de Fibonacci."
    else
        puts "#{number} não pertence à sequência de Fibonacci."
    end
end

puts "Informe um número:"
number = gets.to_i
number_in_fibonacci?(number)