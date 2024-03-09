//
//  onBoardingScreenView.swift
//  shoppingApp
//
//  Created by Anand Stephan on 09/03/24.
//

import SwiftUI

struct onBoardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack (spacing:30){
          
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .padding()
                VStack(alignment: .leading,spacing: 10){
                    Text("Order Your Favorites Fruits"
                    )
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(.largeTitle))
                    Text("Eat Fresh Fruits and try to be healthy"
                    )
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink(destination: HomeScreen(), label: {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280,height: 60,alignment: .trailing)
                        .overlay(content: {
                            HStack(spacing:10){
                                Text("Next")
                                    .fontWeight(.bold)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                Image(systemName: "chevron.right")
                            }
                            .foregroundColor(.black)
                        })
                    
                        
                })
                Spacer()

            }
            
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    onBoardingScreenView()
}
