//
//  Searchable.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct Searchable: View {
    
    @State private var arananKelime = ""
    
    var body: some View {
        
        NavigationStack { //MARK: Seach çalışması için navigation stack gerekiyor
            VStack {
                
            }.navigationTitle("Ara")
        }.searchable(text: $arananKelime, prompt: "Ara")
            .onChange(of: arananKelime) { oldValue, newValue in
                print("Arama sonucu: \(newValue)")
            }
    }
}

#Preview {
    Searchable()
}
