//
//  SilederKullanimi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct SilederKullanimi: View {
    
    @State private var sliderDurum = 5.0 //DİKKAT: must be Double

    
    var body: some View {
        VStack {
            Text("Sonuç: \(Int(sliderDurum))").font(.system(size: 50)).bold().padding()
                .shadow(color: .red, radius: sliderDurum)
            
            
            Slider(value: $sliderDurum, in: 0...20)
            
            Stepper("Shadow", value: $sliderDurum, in:  0...20)
        }.padding()
    }
}

#Preview {
    SilederKullanimi()
}
