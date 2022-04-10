//
//  RatesTableViewController.swift
//  CurrencyRates
//
//  Created by Alex Golyshkov on 08.04.2022.
//

import UIKit

class RatesTableViewController: UITableViewController {
    //MARK: - IB Outlets
    @IBOutlet var ratesTimestampLabel: UILabel!
    
    private let currencies = Currency.allCases
    var currentCurrencyData: CurrencyData!
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 150
        
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
        tableView.refreshControl = refreshControl
        
        fetchRates()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(currencies[section].description())"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        currencies.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "currency", for: indexPath)
        let cellLabel = cell.viewWithTag(10) as! UILabel
        
        let currencyName = self.currencies[indexPath.section].rawValue
        guard let currency = self.currentCurrencyData?.valute[currencyName] else { return UITableViewCell()}
        
        cellLabel.text = currency.description

        return cell
    }
    
    //MARK: - Private Methods
    @objc private func refresh(sender: UIRefreshControl) {
        fetchRates()

        sender.endRefreshing()
    }
    
    private func fetchRates() {
        CurrencyNetworkManager.fetchRates { currentCurrencyData in
            self.currentCurrencyData = currentCurrencyData
            
            guard let timeStamp = self.currentCurrencyData?.timestamp.replacingOccurrences(of: "T", with: " ") else { return }
            self.ratesTimestampLabel.text = "Обновлено \(timeStamp)"
            self.tableView.reloadData()
        }
    }
}
