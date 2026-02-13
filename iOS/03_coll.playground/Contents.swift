import Cocoa



var arr:[Int] = []


var arr2 = [1,2,3,4,5,6,7]

arr2.append(99)

arr2.insert(88, at: 4)

var n = arr2.popLast()

print(n!)

print(arr2.remove(at: 3))

// arr2

arr2
arr2.removeLast(3) // remove mas nao devolve 
arr2

arr2.first
arr2.last


var nomes: [String] = [
    "João", "Maria", "Pedro", "Ana", "Miguel",
    "Sofia", "Tiago", "Inês", "Rafael", "Beatriz",
    "Gonçalo", "Carolina", "Bruno", "Marta", "Diogo",
    "Filipa", "André", "Catarina", "Luís", "Patrícia"
]


nomes[1]


nomes[1...4]


nomes[6...]


// nomes[stride(from: 2, to: 10, by: 2)]


nomes.suffix(5) // mostra os ultimos 5



for nome in nomes.enumerated() {
    
    print(nome.offset)
    print(nome.element)
    
}

var mtx = [[1,2,3],[4,5,6],[7,8,9]]


for line in mtx{
    for col in line{
        print(col)
    }
}

nomes.forEach { nome in
    print(nome)
}




var arr3 = [1]


arr3.count
arr3.capacity

arr3.append(3)

print(arr3.count)
print(arr3.capacity)


arr3.append(3)

print(arr3.count)
print(arr3.capacity)


arr3.append(3)

print(arr3.count)
print(arr3.capacity)


arr3.append(3)

print(arr3)
print(arr3.count)
print(arr3.capacity)

arr3.append(3)
arr3.append(3)
arr3.append(3)
arr3.append(3)
arr3.append(3)
print("-----")
print(arr3.count)
print(arr3.capacity)


arr3.append(3)
print(arr3.count)
print(arr3.capacity)





var arr5 = [1,2,3,2,5,2,7]


// arr5.index(of: 2)

arr5.firstIndex(of: 2)
arr5.lastIndex(of: 2)


print("----------------------")


var arr6 = arr5.map { i in
    i * 99
}

arr6


var numLetras = nomes.map(\.count)


var numLetras2 = nomes.map{ nome in
    nome.count
}


var numLetras3 = nomes.map{
    $0.count
}

func contarLetras(str:String) -> (count:Int, nome:String){
    (str.count, str)
}

var numLetras4 = nomes.filter({
    $0.count > 6
}).map(contarLetras)


numLetras
numLetras2
numLetras3
numLetras4


var arr9 = [1,2,3]


var sum = arr9.reduce(into: 0) { partialResult, elm in
    
    partialResult += elm
    
}


var sum2 = arr9.reduce(into: 0) {
    $0 += $1
}


arr9.reduce(into:0) { pr, i in
    pr += i
}





