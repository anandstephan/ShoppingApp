//
//  FruitCardView.swift
//  shoppingApp
//
//  Created by Anand Stephan on 09/03/24.
//

import SwiftUI

let images:FruitModel = FruitModel(id: 1, title: .apple, image: "apple", price: "3.44$", color: "1")

struct FruitCardView: View {
    let fruits:FruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading,spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundStyle(.black.opacity(0.7))
                Spacer()
                
            }
            .padding()
            .frame(width: 175,height: 150,alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,x:6,y:5)
            
            Image(fruits.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 110)
                .offset(y:55)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/,y:5)

        }
        .frame(width: 175,height: 250,alignment: .center)
    }
    
}

#Preview {
    FruitCardView(fruits:images)
}
