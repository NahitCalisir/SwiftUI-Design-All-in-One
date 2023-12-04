//
//  WidgetsKullanimiApp.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

@main
struct SwiftUITasarimApp: App {
    
    //MARK: - Aşağıda oluşturduğumuz AppDelega'i uygulamamıza tanıtalım
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            IndexPage()
        }
    }
}

//MARK: - BİLDİRİMLERİN UYGULAMA ÖN PLANDA AÇIKKEN GÖRÜNMESİ İÇİN APPDELEGATE SINIFI OLUŞTURUP AŞAĞIDAKİ EKLEMELERİ YAPIYORUZ.

//MARK:  Uygulama ayarlarını yaptığımız bir AppDelegate sınıfı oluşturacağız ve bunu yukarıda uygulamamıza tanıtacağız

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        //Aşağıda eklediğimiz UNUserNotificationCenter protokülünü yetkilendiriyoruz.bunu yapmazsak aşağıdaki funksiyon çalışmaz.
        UNUserNotificationCenter.current().delegate = self
        return true
    }
}

//MARK: - Bildirim ayarları için gereken eklentiler

//MARK: AppDelegate sınıfına UNUserNotificationCenterDelegate protokolini ekleyeceğiz ve ve yukarıda yetkilendireceğiz
extension AppDelegate: UNUserNotificationCenterDelegate {
    //MARK: Bildirimin uygulama önplanda iken çalışması için gereken fonksiyon
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner,.badge,.sound]) //Bildirimlerimizin özelliklerini giriyoruz
    }
    
    //MARK: Bildirimin tıklandığını algılamak için gereken fonksiyon
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        print("Bildirim tıklandı")
        
        let app = UIApplication.shared
        
        if app.applicationState == .active {
            print("Ön planda açıkken tıklandı")
        } else {
            print("Arka planda iken tıklandı")
        }
        //MARK: - BİLDİRİME TIKLANDIĞINDA BADGE DEĞERİNİ SIFIRLAMA
        app.applicationIconBadgeNumber = 0
        completionHandler()
    }
    
}
