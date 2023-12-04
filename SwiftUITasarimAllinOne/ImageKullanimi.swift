//
//  ImageKullanimi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct ImageKullanimi: View {
    
    @State private var resimAdi = "face.smiling"
    
    var body: some View {
        Image(systemName: resimAdi)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 3)
            .foregroundColor(.purple)
            .padding()
            .background(.cyan)
            .cornerRadius(20)
            .border(Color.yellow, width: 10)
            .shadow(color: .yellow, radius: 20)
            .opacity(0.8)
            .onTapGesture {
                print("resim tıklandı")
            }
        
        
        Button("Resim 1") {
            resimAdi = "face.smiling"
        }.padding()
        
        Button("Resim 2") {
            resimAdi = "face.smiling.fill"
        }
        .navigationTitle("İmage Kullanımı")
    }
}

#Preview {
    ImageKullanimi()
}
