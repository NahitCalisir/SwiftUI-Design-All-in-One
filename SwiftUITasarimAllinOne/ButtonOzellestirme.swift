//
//  ButtonOzellestirme.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct ButtonOzellestirme: View {
    var body: some View {
        
        Button(action: {
            print("Button Tıklandı")
        }, label: {
            VStack (alignment: .leading){
                Text("Custom Button")
                    .bold()
                    .font(.system(size: 30))
                    .padding(.bottom)
                    .foregroundColor(.yellow)
                Text("Bu dersimizde Button nasıl özelleşitirilir konusunu işleyeceğiz")
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            
        }).frame(maxWidth: .infinity)
            .frame(height: UIScreen.main.bounds.height / 5)
            .foregroundColor(.white)
            .padding() // yazı ile arka plan rengi arasına boşluk, kullanım sırası önemli
            .font(.system(size: 22))
            .background(.purple)
            .cornerRadius(9)
            //.bold()
            .padding() // frame etrafına boşluk koyar
            .opacity(1)
            .shadow(color: .pink, radius: 20)
            .padding()
            .border(Color.yellow, width: 5)
            .padding()
        
        
        
        
        
    }
}

#Preview {
    ButtonOzellestirme()
}
