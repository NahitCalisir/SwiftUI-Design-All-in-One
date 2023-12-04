//
//  TabbarSayfa.swift
//  CalismaYapisi
//
//  Created by Nahit Çalışır on 23.11.2023.
//

import SwiftUI

struct TabbarSayfa: View {
    
    init() {
        
        customizeTabBar(backgroundColor: .systemIndigo, selectedItemColor: .systemYellow, normalItemColor: .lightGray)
    }

    var body: some View {
        NavigationStack {
            VStack {
                CostumTabbar()
            }
        }
    }
}

//MARK: - CUSTOM TABBAR
struct CostumTabbar: View {
    var body: some View {
        
        NavigationStack {
            TabView {
                HomePage().tabItem {
                    Label("Home", systemImage: "homekit")
                }
                
                SettingsPage().tabItem {
                    Label("Setting", systemImage: "gear")
                }
            }
        }.navigationTitle("Tab Bar")
    }
}

func customizeTabBar(backgroundColor: UIColor,selectedItemColor: UIColor, normalItemColor: UIColor) {
    //MARK: - Customize Tabbar
    let tabbarAppearance = UITabBarAppearance()
    tabbarAppearance.backgroundColor = backgroundColor
    
    //Add for all screen type
    UITabBar.appearance().standardAppearance = tabbarAppearance
    UITabBar.appearance().scrollEdgeAppearance = tabbarAppearance
    
    //MARK: - Customize Tabbar items
    let itemAppearance = UITabBarItemAppearance()
    itemAppearance.selected.iconColor = selectedItemColor
    itemAppearance.selected.titleTextAttributes = [.foregroundColor: selectedItemColor]
    itemAppearance.normal.iconColor = normalItemColor
    itemAppearance.normal.titleTextAttributes = [.foregroundColor: normalItemColor]
    //Add for all screen type
    UITabBar.appearance().scrollEdgeAppearance?.inlineLayoutAppearance = itemAppearance
    UITabBar.appearance().scrollEdgeAppearance?.compactInlineLayoutAppearance = itemAppearance
    UITabBar.appearance().scrollEdgeAppearance?.stackedLayoutAppearance = itemAppearance
    UITabBar.appearance().standardAppearance.inlineLayoutAppearance = itemAppearance
    UITabBar.appearance().standardAppearance.compactInlineLayoutAppearance = itemAppearance
    UITabBar.appearance().standardAppearance.stackedLayoutAppearance = itemAppearance
}

#Preview {
    TabbarSayfa()
}
