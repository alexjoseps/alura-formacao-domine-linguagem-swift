// Controle de fluxo com loopings

// for
// while
// repeat while

for _ in 1...10 {
    print("Eu amo a linguagem Swift")
}

var countWhile = 1

while countWhile <= 10 {
    print("Eu amo a linguagem Swift \(countWhile)")
    countWhile += 1
}

var countRepeat = 1

repeat {
    print("Eu amo a linguagem Swift \(countRepeat)")
    countRepeat += 1
} while(countRepeat <= 10)

var somaFor = 0

for i in 1...10 {
    somaFor += i
}

print(somaFor)

var soma = 1
var count = 0
repeat {
    soma += 3
    count += 1
} while(count < 5)
        
print(soma)

// Break
// Continue

var breakCount = 1

while breakCount <= 10 {
    if breakCount == 5 {
        break
    }
    print("Hello world from \(breakCount)")
    breakCount += 1
}

var continueCount = 1

while continueCount <= 10 {
    continueCount += 1
    if continueCount == 5 {
        continue
    }
    print("Hello world from \(continueCount)")
}

// Desafio

for i in 1...10 {
    if i % 2 == 0 {
        print(i)
    }
}
