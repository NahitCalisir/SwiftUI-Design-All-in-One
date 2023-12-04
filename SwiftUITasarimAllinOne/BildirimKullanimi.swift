//
//  BildirimKullanimi.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 1.12.2023.
//

import SwiftUI
import UserNotifications // import ediyoruz

struct BildirimKullanimi: View {
    
    //MARK: - İZİN ALMA İŞLEMİ (APP İLK AÇILDIĞINDA EKRANA ÇIKAR, BİR KEZ İZİN VERİLDİKTEN SONRA ÇIKMAZ)
    init() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { success, error in
            if success {
                print("Bildirim izni var")
            } else {
                print("Bildirim izni yok")
            }
        }
    }
   
    var body: some View {
        VStack {
            Button("BİLDİRİM OLUŞTUR") {
                
                //MARK: - BİLDİRİM OLUŞTURMA (Dikkat: varsayılan olarak uygulama arka planda iken çalışır!)
                //MARK: Uugulama ön planda iken çalışması için App dosyasında bazı eklemeler yapmamız gerekiyor(bkz:SwiftUITasarimApp)
                //MARK: BİLDİRİME TIKLANDIĞINI ALGILAMAYIDA YİNE APP DOSYASINDA YAPIYORUZ
                
                //İçerik oluşturma
                let icerik = UNMutableNotificationContent()
                icerik.title = "Başlık"
                icerik.subtitle = "Alt başlık"
                icerik.body = "mesajı bu alana yaz"
                icerik.badge = 1
                icerik.sound = UNNotificationSound.default
                
                //Tetikleme oluşturma
                //(Tekrarlı bildirim için repeat: true olacak. IOS min 60sn de bir tekrarlama yapmaya izin veriyor)
                let tetikleme = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
                
                //İstek oluşturma
                let istek = UNNotificationRequest(identifier: "id", content: icerik, trigger: tetikleme)
                
                //oluşturulan yapıyı ekleme
                UNUserNotificationCenter.current().add(istek)
                
            }
        }
    }
}

#Preview {
    BildirimKullanimi()
}
