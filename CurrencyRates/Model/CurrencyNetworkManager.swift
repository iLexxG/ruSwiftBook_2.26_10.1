//
//  CurrencyNetworkManager.swift
//  CurrencyRates
//
//  Created by Alex Golyshkov on 08.04.2022.
//

import Foundation

class CurrencyNetworkManager {
    static func fetchRates(completion: @escaping (_ currentCurrencyData: CurrencyData)->()) {
        guard let url = URL(string: "https://www.cbr-xml-daily.ru/daily_json.js") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let currentCurrencyData = try JSONDecoder().decode(CurrencyData.self, from: data)
                DispatchQueue.main.async {
                    completion(currentCurrencyData)
                }
            } catch let error {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
