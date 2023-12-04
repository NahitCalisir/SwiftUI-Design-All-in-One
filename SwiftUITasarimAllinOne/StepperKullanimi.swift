//
//  StepperKullanimi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct StepperKullanimi: View {
    
    @State private var stepperDurum = 1
    
    var body: some View {
        Text("\(stepperDurum)").font(.system(size: 50)).bold().padding()
        
        Stepper("Adet: \(stepperDurum)", value: $stepperDurum, in: 1...5)
            .foregroundColor(.purple)
            .padding() // Yazı etrafına boşluk ekler
            .background(.yellow)
            .bold()
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding()
        
            .navigationTitle("Stepper")
    }
}

#Preview {
    StepperKullanimi()
}
