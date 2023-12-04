//
//  SegmentKullanimi.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct SegmentKullanimi: View {
    
    @State private var segmentedDurum = 0
    @State private var resimAdi = "fork.knife.circle"
    
    var body: some View {
        VStack (spacing: 100) {
            
            //AŞAĞI AÇILAN MENU
            Picker("Menu", selection: $segmentedDurum) {
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }.onChange(of: segmentedDurum) { oledValue, newValue in
                if newValue == 1 {
                    resimAdi = "birthday.cake"
                } else if newValue == 2{
                    resimAdi = "wineglass"
                } else {
                    resimAdi = "fork.knife.circle"
                }
            }
            
            //SEGMENT ŞEKLİNDE
            Picker("Menu", selection: $segmentedDurum) {
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }
            .onChange(of: segmentedDurum) { oldValue, newValue in
                
            }
            .pickerStyle(.segmented)
            
            
            //TEKER ŞEKLİNDE
            Picker("Menu", selection: $segmentedDurum) {
                Text("Yemekler").tag(0)
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)
            }.pickerStyle(.wheel)
            
            Image(systemName: resimAdi)
                .resizable()
                .frame(width: 100, height:  100)
            
            
        }.navigationTitle("Segment")
    }
}

#Preview {
    SegmentKullanimi()
}
