//
//  UlkeModel.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 27.11.2023.
//

import Foundation

//MARK: Ulke modelini oluştuma (identifiable yapmalıyız)
class UlkeModel: Identifiable {
    var ulkeAdi: String?
    var bayrak: String?
    
    init(ulkeAdi: String? = nil, bayrak: String? = nil) {
        self.ulkeAdi = ulkeAdi
        self.bayrak = bayrak
    }
}
