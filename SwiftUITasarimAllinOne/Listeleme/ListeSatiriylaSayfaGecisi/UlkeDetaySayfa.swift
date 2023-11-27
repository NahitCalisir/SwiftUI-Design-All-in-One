//
//  UlkeDetaySayfa.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 27.11.2023.
//

import SwiftUI

struct UlkeDetaySayfa: View {
    
    var ulke = UlkeModel()
    
    var body: some View {
        Text(ulke.ulkeAdi!).font(.system(size: 40)).bold()
            .navigationTitle("Detay Sayfa")
    }
}

#Preview {
    UlkeDetaySayfa()
}
