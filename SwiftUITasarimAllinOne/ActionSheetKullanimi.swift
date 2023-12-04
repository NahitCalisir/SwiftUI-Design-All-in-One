//
//  ActionSheetKullanımi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct ActionSheetKullanimi: View {
    
    @State private var showActionSheet = false
    
    var body: some View {
        
        
        //MARK: actionsheet kaldı, yerine confirmationDialog geldi
        Button("Action Sheet") {
            showActionSheet = true
        }.confirmationDialog("BAŞLIK", isPresented: $showActionSheet, titleVisibility: .visible) {
            Button("İptal", role: .cancel) {
                print("iptal tıklandı")
            }
            Button("Seçenek 1", role: .destructive) {
                print("Tamam tıklandı")
            }
            Button("Seçenek 2 ", role: .none) {
                print("Tamam tıklandı")
            }
        } message: {
            Text("Mesaj içeriğini buraya yaz")
        }

        .navigationTitle("Action Sheet")
    }
}

#Preview {
    ActionSheetKullanimi()
}
