//
//  DetailView.swift
//  Furniture
//
//  Created by geka231 on 12.12.2022.
//

import SwiftUI

struct DetailView: View {
    
    var item: Model
    @State private var count = 1
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                detail()
            }
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
   
    }
    
    
    @ViewBuilder
    private func detail() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color(red: 0.934, green: 0.934, blue: 0.934))
            VStack{
                HStack{
                    VStack (alignment: .leading){
                        Text(item.title)
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.bold)
                        VStack(alignment: .leading){
                            Text("Size: 120/80/40")
                            Text("Weight: 15kg")
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 110, alignment: .topLeading)
                    .padding()
                    Spacer()
                    VStack{
                        HStack{
                            ForEach(1..<5) {
                                _ in Image(systemName: "star.fill")
                            }
                            
                            Image(systemName: "star")
                        }
                        Text("143 reviews")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding(.top,3)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 100, alignment: .topTrailing)
                    .padding(.trailing)
                }

                HStack {
                    Text(item.price)
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 2)
                                    .foregroundColor(.clear)
                            }
                        HStack{
                            Button {
                                count -= 1
                            } label: {
                                Text("-")
                            }

                            
                            Spacer()
                            
                            Text(String(count))
                            
                            Spacer()
                            
                            Button {
                                count += 1
                            } label: {
                                Text("+")
                            }

                        }
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding([.leading, .trailing])
                            
                    }
                    .padding()
                    
                    Button {
                        print ("Added to your cart")
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.black)
                            Text("Cart")
                                .foregroundColor(.white)
                        }
                        .padding(15)
                    }

                }.frame(maxWidth: .infinity, maxHeight: 60)
                    .padding([.leading, .trailing , .bottom])
            }
            
        }
        
        .frame(height: 230)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: Model(title: "Begie chair", price: "7000", imageName:"Begie chair"))
    }
}
