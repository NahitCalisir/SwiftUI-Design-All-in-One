//
//  NavigationBar.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 29.11.2023.
//

import SwiftUI

struct NavigationBar: View {
    @State private var oyunEkraninaGec = false
    
    init() { //APP İLK AÇILDIĞINDA ÇALIŞIR
        //MARK: - Customize navigation bar
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemIndigo  //Arka plan rengi
        //appearance.configureWithOpaqueBackground() // arka planı saydam yapar
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.systemYellow] //title mode .large ise
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white] //title mode .inline ise
        
        //Farklı cihaz tiplerinde görünmesi için aşağıdaki gibi ekliyoruz
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().compactScrollEdgeAppearance = appearance
       
        //MARK: - Customize BACK BUTTON
        let backItemAppearance = UIBarButtonItemAppearance()
        backItemAppearance.normal.titleTextAttributes = [.foregroundColor : UIColor.yellow] // fix text color
        appearance.backButtonAppearance = backItemAppearance
        
        //MARK: fix indicator color
        let image = UIImage(systemName: "arrowshape.turn.up.backward")?.withTintColor(.green, renderingMode: .alwaysOriginal)
        appearance.setBackIndicatorImage(image, transitionMaskImage: image)
        
        //UINavigationBar.appearance().tintColor = .cyan // probably not needed
     }
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                Button("BAŞLA") {
                    oyunEkraninaGec = true
                }
            }.navigationTitle("Anasayfa")
                //MARK: navigation title şeklini değişme (large veya inline)
                .navigationBarTitleDisplayMode(.large)
                .onAppear {
                    
                }
        }
    }
}

#Preview {
    NavigationBar()
}
