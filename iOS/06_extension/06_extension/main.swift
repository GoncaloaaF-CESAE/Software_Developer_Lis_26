//
//  main.swift
//  06_extension
//
//  Created by Gonçalo Feliciano on 24/02/2026.
//

import Foundation

import SwiftUI


var n1 = 10

var n2 = 10.2


print(type(of: n1))
print(type(of: n2))


var soma = n1.asDouble() + n2

print(soma)

print(42.ePar())
print(43.ePar())




print("-----")
print(Int("0")!)
print(Int("1") ?? -1)



print("-----")


var arr = [1,2,3,4,5,6]

print(arr.media())



print("-----")


var arr2:[Double] = [1,2,3,4,5,6]

print(arr2.media())



