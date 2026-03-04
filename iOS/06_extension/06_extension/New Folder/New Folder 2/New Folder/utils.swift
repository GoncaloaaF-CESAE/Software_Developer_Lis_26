//
//  utils.swift
//  06_extension
//
//  Created by Gonçalo Feliciano on 24/02/2026.
//



extension Int {
    
    func asDouble() -> Double{
            Double(self)
    }
    
    
    func ePar() -> Bool{
            return (self % 2 == 0)
    }
}


extension Array<Int> {
    
    func media() -> Double{
        var total = self.reduce(0, +)
        let media = total.asDouble() / self.count.asDouble()
        
        return media

    }

}

extension Array<Double> {
    
    func media() -> Double{
        var total = self.reduce(0.0, +)
        let media = total / self.count.asDouble()
        
        return media

    }

}
