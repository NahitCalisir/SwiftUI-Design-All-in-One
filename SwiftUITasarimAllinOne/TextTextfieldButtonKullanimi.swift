//
//  ContentView.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct TextTextfieldButtonKullanimi: View {
    
    @State private var tf = ""
    @State private var gelenVeri = ""
    
    
    var body: some View {
        ZStack {
            
            Color(uiColor: .systemYellow)
                .ignoresSafeArea()
            
            VStack {
                
                Text("Gelen Veri: \(gelenVeri)")
                    .frame(maxWidth: .infinity)
                    .frame(height: UIScreen.main.bounds.height / 5)
                    .foregroundColor(.yellow)
                    .padding()
                    .font(.system(size: 30))
                    .background(.brown)
                    .cornerRadius(8)
                    .bold()
                
                TextField("veri gir", text: $tf)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                Button("Veriyi gönder") {
                    gelenVeri = tf
                }.foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(8)
            }
            .padding()
        }
        
    }
}

#Preview {
    TextTextfieldButtonKullanimi()
}
