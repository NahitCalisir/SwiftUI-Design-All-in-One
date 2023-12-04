//
//  ContextMenuKullanimi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct ContextMenuKullanimi: View {
    
    @State private var showContexrMenu = false
    
    
    var body: some View {
        
        
        //MARK: üzerine uzun basınca açılan menu
        Button("CONTEX MENU") {
            showContexrMenu = true
        }.contextMenu(ContextMenu(menuItems: {
            
            Button(action: {
                print("foto tıklandı")
            }, label: {
                Label("foto seş", systemImage: "photo")
            })
            
            Button(action: {
                print("kamera tıklandı")
            }, label: {
                Label("kamerayı aç", systemImage: "camera")
            })
            
            Button(action: {
                print("iptal tıklandı")
            }, label: {
                Text("İptal")
            })
            
        })).navigationTitle("Context Menu")
    }
}

#Preview {
    ContextMenuKullanimi()
}
