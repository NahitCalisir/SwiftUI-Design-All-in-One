//
//  DateTimePicker.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 26.11.2023.
//

import SwiftUI

struct DateTimePicker: View {
    
    @State private var time = Date()
    @State private var date = Date()
    @State private var dateAndTime = Date()
    
    @State private var alinanSaat = ""
    @State private var alinanTarih = ""
    @State private var alinanTarihVeSaat = ""
    
    var body: some View {
        VStack (spacing: 50){
            //tarih ve saat birarada
            DatePicker("Tarih ve Saat", selection: $dateAndTime)
            
            //tarih
            DatePicker("Tarih", selection: $date, displayedComponents: [.date])
            
            //Saat
            DatePicker("Saat", selection: $time, displayedComponents: [.hourAndMinute])
            
            Text(alinanTarihVeSaat)
            Text(alinanTarih)
            Text(alinanSaat)
            
            Button("GÖSTER") {
                let dateAndTimeFormatter = DateFormatter()
                dateAndTimeFormatter.dateFormat = "dd.MM.YYYY - HH:mm" //büyük HH 24 saatlik dilimde gösterir
                alinanTarihVeSaat = dateAndTimeFormatter.string(from: dateAndTime)
                
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "dd.MM.YYYY"
                alinanTarih = dateFormatter.string(from: date)
                
                let timeFormatter = DateFormatter()
                timeFormatter.dateFormat = "hh:mm" //küçük hh 12 saatlik dilimde gösterir
                alinanSaat = timeFormatter.string(from: time)

            }
            
            
        }.padding()
    }
}

#Preview {
    DateTimePicker()
}
