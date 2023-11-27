//
//  ListeSatiriylaSayfaGecisi.swift
//  SwiftUITasarimAllinOne
//
//  Created by Nahit Çalışır on 27.11.2023.
//

import SwiftUI

struct ListeSatiriylaSayfaGecisi: View {
    
    @State private var ulkeListei2 = [UlkeModel]()
    
    var body: some View {
        
        List {
            ForEach(ulkeListei2) { ulke in
                //MARK: - tıklanacak nesneyi navigation link içerisine alıyoruz!
                NavigationLink(destination: UlkeDetaySayfa(ulke: ulke)) {
                    UlketItem4(ulke: ulke)
                        .onTapGesture {
                            print("Seçilen Ülke: \(ulke.ulkeAdi!)")
                        }
                }
               
            //MARK: -  KAYDIRMA İŞLEMİ İLE SİLME
            }.onDelete(perform: sil )
        }.onAppear {
            var liste = [UlkeModel]()
            liste.append(UlkeModel(ulkeAdi: "Rusya", bayrak: "flag"))
            liste.append(UlkeModel(ulkeAdi: "Amerika", bayrak: "flag"))
            liste.append(UlkeModel(ulkeAdi: "Çin", bayrak: "flag"))
            
            ulkeListei2 = liste
        }
    }
    
    //MARK: - SİLME FONKSİYONU
    func sil(at offsets: IndexSet) {
        //Hangi ülkenin silineceğini yazdırmak için, silme işleminden önce yapmak lazım.
        let ulke = ulkeListei2[offsets.first!]
        print("Silinen Ülke: \(ulke.ulkeAdi!)")
        //Silme işlemi
        ulkeListei2.remove(atOffsets: offsets)
        
    }
}

//Item Tasarımı
struct UlketItem4: View {
    
    var ulke = UlkeModel()
    
    var body: some View {
        
        Label(ulke.ulkeAdi!, systemImage: ulke.bayrak!)
    }
}


#Preview {
    ListeSatiriylaSayfaGecisi()
}
