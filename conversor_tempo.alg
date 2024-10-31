algoritmo "Conversor de Unidades de Tempo"
variáveis
    valor, resultado : real
    unidadeEntrada, unidadeSaida : caractere[10]
início
    escreva("=== Conversor de Unidades de Tempo ===\n")
    
    // Solicita a unidade de entrada
    escreva("Digite a unidade de entrada (segundos, minutos, horas, dias): ")
    leia(unidadeEntrada)
    
    // Solicita o valor a ser convertido
    escreva("Digite o valor a ser convertido: ")
    leia(valor)

    // Converte o valor para segundos
    escolha unidadeEntrada
        caso "segundos":
            // Já está em segundos
            resultado ← valor
        caso "minutos":
            resultado ← valor * 60
        caso "horas":
            resultado ← valor * 3600
        caso "dias":
            resultado ← valor * 86400
        padrão:
            escreva("Unidade de entrada inválida!")
            pare
    fimescolha

    // Solicita a unidade de saída
    escreva("Digite a unidade de saída (segundos, minutos, horas, dias): ")
    leia(unidadeSaida)

    // Converte o resultado para a unidade de saída
    escolha unidadeSaida
        caso "segundos":
            // Já está em segundos
            escreva("Resultado: ", resultado:0:2, " segundos")
        caso "minutos":
            escreva("Resultado: ", resultado / 60:0:2, " minutos")
        caso "horas":
            escreva("Resultado: ", resultado / 3600:0:2, " horas")
        caso "dias":
            escreva("Resultado: ", resultado / 86400:0:2, " dias")
        padrão:
            escreva("Unidade de saída inválida!")
    fimescolha
fimenquanto
