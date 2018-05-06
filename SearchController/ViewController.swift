//
//  ViewController.swift
//  SearchController
//
//  Created by M. Zharif Hadi M. Khairuddin on 06/05/2018.
//  Copyright © 2018 M. Zharif Hadi M. Khairuddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cellId = "cellId"
    var searchController = UISearchController()
    var tableView = UITableView()
    
    let sections:[String] = ["Section 1"]
    let s1Data: [String] = ["Row 1", "Row 2", "Row 3"]

    private var countries: [Country] {
        let countries = CountryList()
        let countryList = countries.countries
        return countryList
    }
    
    var sectionData: [Int: [Country]] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView = UITableView(frame: view.frame)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.view.addSubview(self.tableView)
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Country"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        sectionData = [0: countries]
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sectionData[section]?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)

        cell.textLabel?.text = sectionData[indexPath.section]![indexPath.row] as? String

        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    
}


extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    
}

