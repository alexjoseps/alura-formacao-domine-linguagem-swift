// Coleções

// Array

var notas = [7.5, 9.1, 6.2, 8.0]

notas[0]

var notasVazio = Array<String>()

var outrasNotas: [String] = ["Hi"]

let novasNotas = [Int]()
//novasNotas.append(5) // ERRO, modificando constante

notas.isEmpty
notasVazio.isEmpty

// atributo
notas.count

// funções
notas.min()
notas.max()
notas.contains(4.0)
notas.firstIndex(of: 10)

notas.append(10)
notas.insert(5, at: 2)
notas += [2]

var elementoRemovido = notas.remove(at: 3)
print(elementoRemovido)

print(notas)

for nota in notas {
    print(nota)
}

for i in 0..<notas.count {
    print(notas[i])
}

for (index, nota) in notas.enumerated() {
    print(index, nota)
}

// Sets

// Não possuem ordenação fixa
// Não é possível ter valores repetidos
var nomes: Set<String> = ["Alex", "Carolina", "Thiago", "Luiz", "Alex"]

nomes.count
nomes.contains("Alex")
nomes.insert("Marcos")
print(nomes)
nomes.remove("Luiz")
print(nomes)

// Tuplas

var coordenadasAntigas = (3.2, 1)
print(coordenadasAntigas.0)
print(coordenadasAntigas.1)

var coordenadasMaisAntigas: (x: Int, y: Double) = (x: 10, y: 8.2)
print(coordenadasMaisAntigas.x)
print(coordenadasMaisAntigas.y)

typealias Coordenada = (x: Int, y: Double)

var coordenadas: Coordenada = (4, 0.45)
print(coordenadas.x)
print(coordenadas.y)

var pessoa = (nome: "Alex", idade: 28)
pessoa.nome
pessoa.idade

var (_, idade) = pessoa
//print(nome)
print(idade)

// Dicionários

 var pontuacao = [
    "joaosilva": 20,
    "paulosilva": 10,
    "alexsouza": 15
 ]

var pessoas: [String: Int] = [:]
pessoas.count
pessoas.reserveCapacity(10)

pontuacao["anaclara"] = 40
print(pontuacao)
pontuacao.updateValue(80, forKey: "gustavosouza")
print(pontuacao)
pontuacao.removeValue(forKey: "anaclara")
print(pontuacao)

for (nome, pontos) in pontuacao {
    print("\(nome) fez \(pontos) pontos")
}

for nome in pontuacao.keys {
    print(nome)
}

for ponto in pontuacao.values {
    print(ponto)
}


// Desafio - Aprovado ou reprovado?

func calculaMedia(_ notas: [Double]) -> Double {
    var total = 0.0
    let quantity = Double(notas.count)

    for nota in notas {
        total += nota
    }
    
    return (total / quantity)
}

print(calculaMedia([10, 5.5, 6]))


// Desafio - Estados do Brasil

let estados = [
    "SC": "Santa Catarina",
    "SP": "São Paulo",
    "BA": "Bahia"
]

func exibeEstadoComOitoLetrasOuMais(_ estados: [String: String]) {
    for (uf, estado) in estados {
        if estado.count > 8 {
            print(estado)
        }
    }
}

exibeEstadoComOitoLetrasOuMais(estados)
