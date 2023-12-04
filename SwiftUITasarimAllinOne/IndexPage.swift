//
//  HomePage.swift
//  WidgetsKullanimi
//
//  Created by Nahit Çalışır on 24.11.2023.
//

import SwiftUI

struct IndexPage: View {
    
    var index = [Konular]()
    
    @State private var sayfa1 = false
    @State private var sayfa2 = false
    @State private var sayfa3 = false
    @State private var sayfa4 = false
    @State private var sayfa5 = false
    @State private var sayfa6 = false
    @State private var sayfa7 = false
    @State private var sayfa8 = false
    @State private var sayfa9 = false
    @State private var sayfa10 = false
    @State private var sayfa11 = false
    @State private var sayfa12 = false
    @State private var sayfa13 = false
    @State private var sayfa14 = false
    @State private var sayfa15 = false
    @State private var sayfa16 = false
    @State private var sayfa17 = false
    @State private var sayfa18 = false
    @State private var sayfa19 = false
    @State private var sayfa20 = false
    @State private var sayfa21 = false
    @State private var sayfa22 = false
    @State private var sayfa23 = false
    @State private var sayfa24 = false
    @State private var sayfa25 = false
    @State private var sayfa26 = false
    @State private var sayfa27 = false
    @State private var sayfa28 = false
    @State private var sayfa29 = false
    @State private var sayfa30 = false
    @State private var sayfa31 = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
                List {
                    Text("Navigation Bar Kullanımı")
                        .onTapGesture {
                            sayfa25 = true
                        }
                    Text("Tool Bar Kullanımı")
                        .onTapGesture {
                            sayfa26 = true
                        }
                    Text("Tab Bar Kullanımı")
                        .onTapGesture {
                            sayfa27 = true
                        }
                    Text("Text,TextField,Button Kullanimi")
                        .onTapGesture {
                            sayfa1 = true
                        }
                    Text("Text Ozellştirme")
                        .onTapGesture {
                            sayfa2 = true
                        }
                    Text("Button Özelleştirme")
                        .onTapGesture {
                            sayfa3 = true
                        }
                    Text("Text Field Özelleştirme")
                        .onTapGesture {
                            sayfa4 = true
                        }
                    Text("İmage Kullanımı")
                        .onTapGesture {
                            sayfa5 = true
                        }
                    Text("Toggle Kullanımı")
                        .onTapGesture {
                            sayfa6 = true
                        }
                    Text("Segment Kullanımı")
                        .onTapGesture {
                            sayfa7 = true
                        }
                    Text("Stepper Kullanımı")
                        .onTapGesture {
                            sayfa8 = true
                        }
                    Text("Sileder Kullanımı")
                        .onTapGesture {
                            sayfa9 = true
                        }
                    Text("Alert Kullanımı")
                        .onTapGesture {
                            sayfa10 = true
                        }
                    Text("Action Sheet Kullanımı")
                        .onTapGesture {
                            sayfa11 = true
                        }
                    Text("Context Menu Kullanımı")
                        .onTapGesture {
                            sayfa12 = true
                        }
                    Text("Date & Time Picker Kullanımı")
                        .onTapGesture {
                            sayfa13 = true
                        }
                    Text("Picker Kullanımı")
                        .onTapGesture {
                            sayfa14 = true
                        }
                    Text("Seach (arama çubuğu) Kullanımı")
                        .onTapGesture {
                            sayfa15 = true
                        }
                    Text("Sabit Listeleme")
                        .onTapGesture {
                            sayfa16 = true
                        }
                    Text("Grid Listeleme")
                        .onTapGesture {
                            sayfa17 = true
                        }
                    Text("Yatay Listeleme")
                        .onTapGesture {
                            sayfa18 = true
                        }
                    Text("Dinamik Listeleme")
                        .onTapGesture {
                            sayfa19 = true
                        }
                    Text("Liste Üzerindeki Nesneye Tıklama")
                        .onTapGesture {
                            sayfa20 = true
                        }
                    Text("Lise üzerinde kaydırma ile silme")
                        .onTapGesture {
                            sayfa21 = true
                        }
                    Text("Lise Satırına tıklayarak sayfa geçişi")
                        .onTapGesture {
                            sayfa22 = true
                        }
                    Text("Dinamik Grid Listeleme")
                        .onTapGesture {
                            sayfa23 = true
                        }
                    Text("Dinamik Grid Listeleme Sayfa Geçişi")
                        .onTapGesture {
                            sayfa24 = true
                        }
                    Text("İnternetten Resim Çekme")
                        .onTapGesture {
                            sayfa28 = true
                        }
                    Text("Bildirim Kullanımı")
                        .onTapGesture {
                            sayfa29 = true
                        }
                    Text("Core Location Kullanımı")
                        .onTapGesture {
                            sayfa30 = true
                        }
                    Text("Map Kit Kullanımı")
                        .onTapGesture {
                            sayfa31 = true
                        }
                    
                }.listStyle(.plain)
            }.navigationTitle("SwiftUI Tasarım")
                .navigationDestination(isPresented: $sayfa1) {
                    TextTextfieldButtonKullanimi()
                }
                .navigationDestination(isPresented: $sayfa2) {
                    TextOzellestirme()
                }
                .navigationDestination(isPresented: $sayfa3) {
                    ButtonOzellestirme()
                }
                .navigationDestination(isPresented: $sayfa4) {
                    TextFieldOzellestirme()
                }
                .navigationDestination(isPresented: $sayfa5) {
                    ImageKullanimi()
                }
                .navigationDestination(isPresented: $sayfa6) {
                    ToggleKullanimi()
                }
                .navigationDestination(isPresented: $sayfa7) {
                    SegmentKullanimi()
                }
                .navigationDestination(isPresented: $sayfa8) {
                    StepperKullanimi()
                }
                .navigationDestination(isPresented: $sayfa9) {
                    SilederKullanimi()
                }
                .navigationDestination(isPresented: $sayfa10) {
                    AlertKullanimi()
                }
                .navigationDestination(isPresented: $sayfa11) {
                    ActionSheetKullanimi()
                }
                .navigationDestination(isPresented: $sayfa12) {
                    ContextMenuKullanimi()
                }
                .navigationDestination(isPresented: $sayfa13) {
                    DateTimePicker()
                }
                .navigationDestination(isPresented: $sayfa14) {
                    PickerKullanimi()
                }
                .sheet(isPresented: $sayfa15) {
                    Searchable()
                }
                .navigationDestination(isPresented: $sayfa16) {
                    SabitListeleme()
                }
                .navigationDestination(isPresented: $sayfa17) {
                    SabitGridListele()
                }
                .navigationDestination(isPresented: $sayfa18) {
                    YatayListele()
                }
                .navigationDestination(isPresented: $sayfa19) {
                    DinamikListeleme()
                }
                .navigationDestination(isPresented: $sayfa20) {
                    ListeUzerindekiNesneyeTiklama()
                }
                .navigationDestination(isPresented: $sayfa21) {
                    ListeUzerindeKaydirma()
                }
                .navigationDestination(isPresented: $sayfa22) {
                    ListeSatiriylaSayfaGecisi()
                }.navigationDestination(isPresented: $sayfa23) {
                    DinamikGridListeleme()
                }.navigationDestination(isPresented: $sayfa24) {
                    DinamikGridListelemeSayfaGecisi()
                }.navigationDestination(isPresented: $sayfa25) {
                    NavigationBar()
                }.navigationDestination(isPresented: $sayfa26) {
                    ToolBar()
                }.navigationDestination(isPresented: $sayfa27) {
                    TabbarSayfa()
                }.navigationDestination(isPresented: $sayfa28) {
                    InternettenResimCekme()
                }.navigationDestination(isPresented: $sayfa29) {
                    BildirimKullanimi()
                }.navigationDestination(isPresented: $sayfa30) {
                    CoreLocationKullanimi()
                }.navigationDestination(isPresented: $sayfa31) {
                    MapKitKullanimi()
                }
        }
    }
}

struct Konular: Identifiable {
    var id: Int
    var konuAdi: String
    init(id: Int, konuAdi: String) {
        self.id = id
        self.konuAdi = konuAdi
    }
}

#Preview {
    IndexPage()
}
