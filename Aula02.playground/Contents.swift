// Operadores relacionais e lógicos

let pontuacao1 = 8.0
let pontuacao2 = 10.0

pontuacao1 > pontuacao2
pontuacao1 >= pontuacao2
pontuacao1 < pontuacao2
pontuacao1 <= pontuacao2
pontuacao1 == pontuacao2
pontuacao1 != pontuacao2

let usuario1Venceu = pontuacao1 > pontuacao2
let usuario2Venceu = pontuacao1 < pontuacao2

var idade = 18
let adulto = idade >= 18
var possuiCNHValida = true

var podeDirigir = adulto && possuiCNHValida

possuiCNHValida = false

podeDirigir = adulto || possuiCNHValida

!adulto

// Condicionais (if, else if e else)

idade = 22

if idade >= 18 {
    print("Pode emitir uma CNH")
} else {
    print("Não pode emitr uma CNH")
}

possuiCNHValida = true

if idade >= 18 && possuiCNHValida {
    print("Você pode dirigir")
} else {
    print("Você não pode dirigir")
}

let numero1 = 10
let numero2 = 10

if numero1 > numero2 {
    print("Número 1 é maior que número 2")
} else if numero2 > numero1 {
    print("Número 2 é maior que número 1")
} else {
    print("Número 1 é igual ao número 2")
}

// Operador ternário

idade = 17
idade >= 18 ? print("Maior de idade") : print("Não é maior de idade")

// Intervalo de valores e condicionais com switch

// Intervalo fechado
var intervaloFechado = 10...20 // 10,11,12,...20

// Intervalo semi-aberto
var intervaloSemiAberto = 10..<20 // 10,11,12,...19

var numero = 25

switch numero {
case 0...10: print("Número entre 0 e 10")
case 11...20: print("Número entre 11 e 20")
default: print("Número maior que 20")
}

var animal = "Cobra"

switch animal{
case "Cachorro", "Gato": print("Animal doméstico")
default: print("Animal selvagem")
}

numero = 25

switch numero {
case _ where numero % 2 == 0: print("Número \(numero) par")
case let x where x % 2 != 0: print("Número \(numero) ímpar")
default: break
}

var numeroAleatorio = Int.random(in: 0...100)
print(numeroAleatorio)

// Desafio 1 - Pontuação do usuário

let pergunta = "Qual o valor de 8 x 2?"
let respostaCorreta = 16
let respostaUsuario = 18
var pontuacaoUsuario: Int = 0

switch respostaUsuario {
case respostaCorreta: pontuacaoUsuario += 1
default: pontuacaoUsuario -= 1
}

// Desafio 2 - Idade do usuário

let minhaIdade = 13

switch minhaIdade {
case 0...13: print("Criança")
case 14...17: print("Adolescente")
default: print("Adulto")
}

// Desafio 3 - Operadores lógicos e relacionais

let idadePessoa: Int = 18
let pessoaEstaComRG: Bool = true

if idadePessoa >= 18 && pessoaEstaComRG {
    print("Pode entrar")
} else {
    print("Não pode entrar")
}
