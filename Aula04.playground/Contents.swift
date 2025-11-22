// Funções e opcionais

// Modularização, organização e reutilização

func soma(numero1: Int, numero2: Int) {
    var resultado = numero1 + numero2
    print(resultado)
}

soma(numero1: 10, numero2: 5)

// Argument label
func subtrai(_ numero1: Int, menos numero2: Int) {
    let resultado = numero1 - numero2
    print(resultado)
}

subtrai(5, menos: 10)

// Função com retorno
func multiplica(_ numero1: Int, _ numero2: Int) -> Int {
    return numero1 * numero2
}

print(multiplica(10, 2))

func verificaIdade(_ idade: Int) -> Bool {
    return idade >= 18
}

print(verificaIdade(28))

// Passagem de argumento por valor, não é possível alterar devido argumento ser constante
//func somaNumero(_ numero: Int) -> Int {
//    numero += 1 // ERRO
//    return numero
//}

// Passagem de argumento por referência, é possível alterar o valor
func somaNumeroRef(_ numero: inout Int) {
    numero += 1
}

// Variável/referência sendo passada como argumento
var valor = 10
// A funcão recebe a referência da variável externa e incrementa o valor com + 1
somaNumeroRef(&valor)
print(valor)

// Opcionais (Nullable)
// A variável se torna um "Optional", pode conter o valor string ou nulo

var dddTelefoneFixo: String?
dddTelefoneFixo = "47"

var telefoneFixo: String?
telefoneFixo = "33382358"

// ! força a "desembrulho" do valor de "optional", causa erro caso a optional não tenha um valor válido
if telefoneFixo != nil {
    print(telefoneFixo!)
}

// OPTIONAL BINDING - Cria uma nova variável com o valor da optional, caso tenha
if let telefoneFixo = telefoneFixo {
    print(telefoneFixo)
}

if let telefoneFixo = telefoneFixo, let dddTelefoneFixo = dddTelefoneFixo {
    print(dddTelefoneFixo, telefoneFixo)
}

// GUARD LET
func ligar(_ dddTelefone: String?, _ telefone: String?) {
    guard let dddTelefone = dddTelefone, let telefone = telefone else {
        print("Telefone inválido")
        return
    }
    
    print("Ligando para \(dddTelefone) \(telefone)")
}

ligar(dddTelefoneFixo, telefoneFixo)

// OPTIONAL CHAINING
if let primeiroNumeroTelefone = telefoneFixo?.first {
    print(primeiroNumeroTelefone)
}

// Nil coalescing
print(telefoneFixo ?? "Telefone não encontrado")

// Desafio - Colocando a função para funcionar

func ehPrimo(_ numero: Int) -> Bool {
    if numero <= 1 {
        return false
    }

    for i in 2..<numero {
        if numero % i == 0 {
            return false
        }
    }
    
    return true
}

print(ehPrimo(2))

// Desafio - Função com opcional

func exibeNomePessoa(_ nome: String?) {
    if let nome = nome {
        print(nome)
    } else {
        print("Nome não especificado")
    }
}

exibeNomePessoa("Alex")

// Desafio - Indo ao restaurante

func divideConta(_ valorTotal: Double, _ numeroPessoas: Int) {
    print("Conta: R$ \(valorTotal)")
    
    let valorTotalComTaxa = valorTotal * 1.10
    print("Total com taxa do garçom: R$ \(valorTotalComTaxa.rounded())")
    
    print("Quantidade de pessoas: \(numeroPessoas)")
    
    let totalDivididoPorPessoa = valorTotalComTaxa / Double(numeroPessoas)
    print("Valor por pessoa: R$ \(totalDivididoPorPessoa.rounded())")
}

divideConta(249.99, 3)
