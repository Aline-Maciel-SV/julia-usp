### Aline Maciel Silva - 11794928 ###

function maclaurin_e(x, N)
    soma = 0.0
    for n in 0:N-1
        termo = x^n / factorial(n)
        soma += termo
    end
    return soma
end

function testa_maclaurin()
    testes = [
        (1, 1, 1 + 1),
        (2, 2, 1 + 2 + 2^2 / 2),
        (0.5, 5, exp(0.5)),
        (1, 10, exp(1)),
        (2, 20, exp(2))
    ]

    for (x, N, valor_esperado) in testes
        resultado = maclaurin_e(x, N)
        if !isapprox(resultado, valor_esperado; atol=1e-6)
            println("Teste falhou para x = $x, N = $N")
            println("Resultado obtido: $resultado")
            println("Valor esperado:  $valor_esperado")
        else
            println("Teste passou para x = $x, N = $N")
        end
    end
end

# TESTE
testa_maclaurin()