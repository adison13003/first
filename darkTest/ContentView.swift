//
//  ContentView.swift
//  darkTest
//
//  Created by Adison on 04/05/2020.
//  Copyright © 2020 Adison. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    let gray = Color(UIColor.systemGray5)
    var body: some View {
        NavigationView{
            VStack{
            ZStack{
                Rectangle()
                    .padding(.leading, -100.0)
                    .frame(width: 5.0)
                VStack(alignment: .leading){
                    Rectangle()
                        .frame(width: 200.0, height: 100.0)
                        .foregroundColor(Color(UIColor.systemPink))
                        .padding()
                        .environment(\.colorScheme, .dark)
                    VStack{
                        Text("Titre")
                            .frame(width: 300.0)
                            .background(gray)
                            .font(.title)
                        Text("lorem lreom le orern jberber b bhehb erb  ebh ebh erbher bh eb erbhe rhbe bhe hbe bh ebher bh rebh e")
                        .frame(width: 300.0)
                        .background(gray)

                    }
                }
                .background(Color(UIColor.systemBlue))
            }

            }
                
                .navigationBarTitle("coucou")
                .navigationBarItems(trailing: Button(action: {
                    
                }, label: {
                    Text(colorScheme == .dark ? "dark" : "light")
                    
                }))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark
)
    }
}
