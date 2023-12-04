//
//  InternettenResimCekme.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 1.12.2023.
//

//https://i.pinimg.com/564x/e6/3a/e7/e63ae790b20ff277defde0d24a0942d6.jpg
//https://i.pinimg.com/564x/28/32/56/28325659e7bb30800d8f524eb0e39b0d.jpg
//https://i.pinimg.com/564x/73/f9/4d/73f94dc54a81fe70e100d4eb7006e913.jpg
//https://i.pinimg.com/564x/a9/d4/4d/a9d44d02f111bc672cd53ce4af411b40.jpg

//MARK: - İNFO DOSYASI İÇERİSİNE GERREKEN İNTERNET İZİNLERİNİ EKLEMEK GEREKİYOR!

import SwiftUI

struct InternettenResimCekme: View {
    
    @State private var imageList = [String]()
    
    var body: some View {
        VStack {
            ScrollView (.horizontal) {
                LazyHStack (alignment: .center, spacing: 20) {
                
                    ForEach(imageList, id:\.self) { imageUrl in
                        
                        //MARK: - İNTERNETTEN ASYNC IMAGE ÇEKME İŞLEMİ
                        AsyncImage(url: URL(string: imageUrl)) { image in
                            image.resizable().frame(width: 250, height: 400, alignment: .center)
                        } placeholder: {
                            ProgressView()
                        }
                        //MARK: -
                    }
                    
                }
            }.onAppear {
                var list = [String]()
                let url1 = "https://i.pinimg.com/564x/e6/3a/e7/e63ae790b20ff277defde0d24a0942d6.jpg"
                let url2 = "https://i.pinimg.com/564x/28/32/56/28325659e7bb30800d8f524eb0e39b0d.jpg"
                let url3 = "https://i.pinimg.com/564x/73/f9/4d/73f94dc54a81fe70e100d4eb7006e913.jpg"
                let url4 = "https://i.pinimg.com/564x/a9/d4/4d/a9d44d02f111bc672cd53ce4af411b40.jpg"
                list.append(url1)
                list.append(url2)
                list.append(url3)
                list.append(url4)
                imageList = list
            }.navigationTitle("Async Image")
                .frame(height: UIScreen.main.bounds.height / 2)
            .shadow(radius: 10)
            .padding(.vertical)
            
            Spacer()
        }
    }
}

#Preview {
    InternettenResimCekme()
}
