//
//  CardView.swift
//  Furniture
//
//  Created by geka231 on 12.12.2022.
//

import SwiftUI


struct CardView: View {
    
    var item: Model
    @State private var isTaped = false

    var body: some View {
        VStack(alignment: .leading){
            Text(item.title)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.accentColor)
                
            
            Image(item.imageName)
                .resizable()
             //   .frame(width: 30, height: 30)
                .aspectRatio(contentMode: .fit)
            
            HStack{
                Text(item.price)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: isTaped ? "heart.fill" : "heart")
                    .onTapGesture{
                        isTaped = true
                    }
            }
        }
        .padding()
        .background(Color.white)
        .frame(width: 172,height: 230)
        .cornerRadius(30)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: Model(title: "sofa", price: "7000", imageName:"sofa"))
    }
}
