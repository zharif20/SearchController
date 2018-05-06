//
//  CountryList.swift
//  SearchController
//
//  Created by M. Zharif Hadi M. Khairuddin on 06/05/2018.
//  Copyright © 2018 M. Zharif Hadi M. Khairuddin. All rights reserved.
//

import Foundation
import UIKit

class CountryList {
    
    var countries: [Country] = {
        var countries: [Country] = []
        countries.append(Country(countryName: "Dungun", countryCode: "trg-1"))
        countries.append(Country(countryName: "Hulu Terengganu", countryCode: "trg-2"))
        countries.append(Country(countryName: "Kemaman", countryCode: "trg-3"))
        countries.append(Country(countryName: "Kuala Terengganu", countryCode: "trg-4"))
        countries.append(Country(countryName: "Marang", countryCode: "trg-5"))
        countries.append(Country(countryName: "Setiu", countryCode: "trg-6"))
        return countries
    }()
    
    
    
}
