//
//  ContentView.swift
//  Menu
//
//  Created by Langemak, Brady on 1/29/25.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    
    var body: some View {
        
        
        List(menuItems) { item in
            
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                Text(item.name)
                    .fontWeight(.bold)
                Spacer()
                Text(item.price)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            
            .listRowSeparator(.hidden)
            .listRowBackground(Color(.orange)
                .opacity(0.1))
            
        }
        .listStyle(.plain)
        .onAppear(){
            menuItems = dataService.getData()
            }
    }
}
#Preview {
    MenuView()
}
