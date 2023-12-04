//
//  ToolBar.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 1.12.2023.
//

import SwiftUI

struct ToolBar: View {
    @State private var oyunEkraninaGec = false
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                Button("BAŞLA") {
                    oyunEkraninaGec = true
                }
            }.navigationTitle("Anasayfa")
                .navigationBarTitleDisplayMode(.large)
                .onAppear {
                    
                }
            
            //MARK: -  TOOLBAR  EKLEME
            .toolbar {
                //MARK: TEKLİ TOOLBAR ITEM EKLEME
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        print("HOME tıklandı")
                    }, label: {
                        Image(systemName: "house")
                    }).foregroundStyle(.white)
                }
                //MARK: GRUP TOOLBAR ITEM EKLEME
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "person").foregroundStyle(.yellow)
                    })
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "list.bullet").foregroundStyle(.orange)
                    })
                }
            }

        }
    }
}

#Preview {
    ToolBar()
}


