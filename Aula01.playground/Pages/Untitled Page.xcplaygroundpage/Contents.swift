// Definindo variáveis

// String precisa ser entre aspas duplas
// Declaração de tipo explícita
var nome: String = "Alex"

// Declaração de tipo implícita
let idade = 28
// idade = 22.5 ERRO, valor double em variável integer
// Conversão
// idade = Int(22.5) ERRO, alterar valor de constante(let)
// idade = 25

// Interpolação de strings
print("Olá, meu nome é \(nome) e eu tenho \(idade) anos")

var coeficienteRendimento = 9.5
var possuiHistoricoReprovacao: Bool
possuiHistoricoReprovacao = false

var turnoEmQueEstuda: Character = "D"

typealias Estudante = String
var aluno1: Estudante = "Thiago"
var aluno2: Estudante = "Maria"

// Desafio

let inicialNome: Character = "A"
let primeiroNome: String = "Alex"
let apelido: String = "Ale"
let minhaIdade: Int = 28
let altura: Double = 1.73
let resposta: Bool = true

print("Inicial do nome: \(inicialNome)")
print("Nome: \(nome)")
print("Apelido: \(apelido)")
print("Idade: \(idade)")
print("Altura: \(altura)")
print("Gosta de Ruby: \(resposta)")

// Operações aritméticas e de atribuição
10 + 2
10 - 2
8 * 2
10 / 5
5 / 2.0
Double(5) / 2
5 % 2
4 % 2

5 + 2 * 10
(5 + 2) * 10

// atribuição
var numero1 = 10
var numero2 = 50
var soma = numero1 + numero2
print(soma)

numero1 = numero1 + 2

// atribuição composta
numero1 += 2

var nome1 = "Alex"
var sobrenome = "Souza"
print(nome1 + " " + sobrenome)
print("Meu nome é \(nome) \(sobrenome)")

// Desafio 1 - Tela quente

let temperaturaEmCelsius = 18.0
let temperaturaEmFahrenheit = temperaturaEmCelsius * 9/5 + 32
print("\(temperaturaEmCelsius)º Celsius é \(temperaturaEmFahrenheit)º em Fahrenheit")

// Desafio 2 - Cálculo de média

let nota1 = 10.0
let nota2 = 5.5
let nota3 = 6.0
let media = (nota1 + nota2 + nota3) / 3
print("Sua média final é \(media)")
