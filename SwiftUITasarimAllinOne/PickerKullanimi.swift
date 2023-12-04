//
//  PickerKullanimi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct PickerKullanimi: View {
    
    @State private var ulkeListesi = [String]()
    @State private var secilenUlke = ""
    
    var body: some View {
        VStack(spacing: 100, content: {
            
            Picker("Başlık", selection: $secilenUlke) {
                ForEach(ulkeListesi, id:\.self) { ulke in  //identitable yaptık
                    Text(ulke)
                }
            }
            
            Text("Seçilen Ülke\n\(secilenUlke)").bold().multilineTextAlignment(.center)
            
        }).onAppear {
            ulkeListesi.append("Türkiye")
            ulkeListesi.append("Almanya")
            ulkeListesi.append("İtalya")
        }.navigationTitle("Picker Kullanımı")
    }
}

#Preview {
    PickerKullanimi()
}
