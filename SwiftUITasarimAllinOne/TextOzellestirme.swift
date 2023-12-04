//
//  TextOzellestirme.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct TextOzellestirme: View {
    var body: some View {
        
        Text("Custom Text, aşağıdaki özellikleri kullanarak textimizi özelleştirebiliriz")
            .frame(maxWidth: .infinity)
            .frame(height: UIScreen.main.bounds.height / 5)
            .foregroundColor(.white)
            .padding() // yazı ile arka plan rengi arasına boşluk, kullanım sırası önemli
            .font(.system(size: 22))
            .background(.brown)
            .cornerRadius(5)
            //.bold()
            .padding() // frame etrafına boşluk koyar
            .opacity(0.8)
            .multilineTextAlignment(.center)
            .shadow(color: .cyan, radius: 20)
            .padding()
            .border(Color.yellow, width: 5)
            .onTapGesture {
                print("Text tıklandı")
            }
            .navigationTitle("Text Özelleştirme")
            .toolbarTitleDisplayMode(.inline)
    }
}

#Preview {
    TextOzellestirme()
}
