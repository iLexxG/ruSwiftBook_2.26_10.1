//
//  Model.swift
//  CurrencyRates
//
//  Created by Alex Golyshkov on 08.04.2022.
//

struct CurrencyData: Codable {
    let date: String
    let previousDate: String
    let previousURL: String
    let timestamp: String
    let valute: [String: Valute]

    enum CodingKeys: String, CodingKey {
        case date = "Date"
        case previousDate = "PreviousDate"
        case previousURL = "PreviousURL"
        case timestamp = "Timestamp"
        case valute = "Valute"
    }
}

struct Valute: Codable {
    let id: String
    let numCode: String
    let charCode: String
    let nominal: Int
    let name: String
    let value: Double
    let previous: Double

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case numCode = "NumCode"
        case charCode = "CharCode"
        case nominal = "Nominal"
        case name = "Name"
        case value = "Value"
        case previous = "Previous"
    }
    
    var change: String {
        var change:Change = .down
        if (previous - value) < 0 {
            change = .up
        }
        return change.rawValue
    }
    
    var description:String {
       """
            ID: \(id)
            Код: \(numCode)
            Обозначение: \(charCode)
            Номинал: \(nominal)
            Текущий курс: \(value) \(change)
            Предыдущий курс: \(previous)
        """
    }
}
