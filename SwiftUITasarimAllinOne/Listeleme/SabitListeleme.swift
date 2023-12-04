//
//  SabitListeleme.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct SabitListeleme: View {
    var body: some View {
        VStack {
            List {
                Label("Güneş", systemImage: "sun.min")
                    .onTapGesture {
                        print("Güneş tıklandı")
                    }
                Label("Yıldız", systemImage: "star")
                    .onTapGesture {
                        print("Güneş tıklandı")
                    }
                Label("Ay", systemImage: "moon")
                    .onTapGesture {
                        print("Güneş tıklandı")
                    }
            }//.listStyle(.plain)
            
            List {
                ListItemTasarım(backgraoundColor: .purple, titleColor: .yellow)
                    .onTapGesture {
                        print("mor tıklandı")
                    }
                ListItemTasarım(backgraoundColor: .pink, titleColor: .blue)
                    .onTapGesture {
                        print("kırmızı tıklandı")
                    }
                ListItemTasarım(backgraoundColor: .blue, titleColor: .green)
                    .onTapGesture {
                        print("mavi tıklandı")
                    }
            }.listStyle(.plain)
            
            
        }.navigationTitle("Sabit Listeleme")
            .navigationBarTitleDisplayMode(.large)
    }
}

struct ListItemTasarım: View {
    
    var backgraoundColor: Color
    var titleColor: Color
    
    var body: some View {
        Button(action: {
            print("Button Tıklandı")
        }, label: {
            VStack (alignment: .leading){
                Text("Custom Button")
                    .bold()
                    .font(.system(size: 30))
                    .padding(.bottom)
                    .foregroundStyle(titleColor)
                Text("Bu dersimizde Button nasıl özelleşitirilir konusunu işleyeceğiz")
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            
        }).frame(maxWidth: .infinity)
            .frame(height: UIScreen.main.bounds.height / 10)
            .foregroundColor(.white)
            .padding() // yazı ile arka plan rengi arasına boşluk, kullanım sırası önemli
            .font(.system(size: 22))
            .background(backgraoundColor)
            .cornerRadius(9)
            //.bold()
            //.padding() // frame etrafına boşluk koyar
            .opacity(1)
            .shadow(color: .red, radius: 10)
    }
}

#Preview {
    SabitListeleme()
}
