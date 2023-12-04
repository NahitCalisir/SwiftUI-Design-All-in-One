//
//  ToggleKullanimi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct ToggleKullanimi: View {
    @State private var resimAdi = "face.smiling"
    @State private var switchDurum = false
    
    var body: some View {
        Image(systemName: resimAdi)
            .resizable()
            .frame(height: 300)
            .aspectRatio(contentMode: .fill)
            .foregroundColor(.purple)
            .padding()
            
        Toggle("Change Image", systemImage: "person", isOn: $switchDurum)
            .onChange(of: switchDurum) { oldValue, newValue in
                print("Durum: \(newValue)")
                if newValue == true {
                    resimAdi = "person"
                } else {
                    resimAdi = "face.smiling"
                }
            }.toggleStyle(SwitchToggleStyle(tint: .red))
            .padding()
        
            .navigationTitle("Toogle Kullanımı")
    }
}

#Preview {
    ToggleKullanimi()
}
