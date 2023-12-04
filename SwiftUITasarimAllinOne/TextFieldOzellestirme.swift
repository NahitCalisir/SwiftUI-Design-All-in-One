//
//  TextFieldOzellestirme.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct TextFieldOzellestirme: View {
    
    @State private var tf = ""
    
    var body: some View {
        
        TextField("Placeholder", text: $tf)
            .padding() // içerideki yazı etrafına boşuk koyar
            .background(.green)
            .cornerRadius(20)
            .padding() // bütününe bpşluk koyar
            .foregroundColor(.white)
            .shadow(color: .red, radius: 10)
            .padding()
            .border(Color.gray, width: 2)
            .padding()
        
        //MARK: - Kendi oluşturduğumuz style'ı kullandık.
        TextField("With my own style", text: $tf)
            .textFieldStyle(MyTextFieldStyle())
        
        TextField("With my own style", text: $tf)
            .textFieldStyle(MyTextFieldStyle())
        
            .navigationTitle("Text Field Özelleştirme")
    }
        
}

//MARK: - CREATE YOUR OWN TEXTFIELD STYLE
struct MyTextFieldStyle: TextFieldStyle {
    func _body(configuration:TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(.cyan)
            .cornerRadius(20)
            .shadow(color: .yellow, radius: 20)
            .foregroundColor(.black)
            .padding()
    }
    
    
}

#Preview {
    TextFieldOzellestirme()
}
