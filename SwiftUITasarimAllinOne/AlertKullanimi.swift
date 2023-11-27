//
//  AlertKullanimi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct AlertKullanimi: View {
    
    @State private var showAlert = false
    
    var body: some View {
        
        //Alert: (title, isPresented, action, message) olanı seçiyoruz
        
        Button("Alert") {
            showAlert = true
        }.alert("Başlık ", isPresented: $showAlert) {
            Button("İptal", role: .cancel) {
                print("iptal tıklandı")
            }
            Button("Tamam", role: .destructive) {
                print("Tamam tıklandı")
            }
        } message: {
            Text("Mesaj içeriğini buraya yaz")
        }

    }
}

#Preview {
    AlertKullanimi()
}

