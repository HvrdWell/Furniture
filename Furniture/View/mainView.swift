//
//  mainView.swift
//  Furniture
//
//  Created by geka231 on 12.12.2022.
//

import SwiftUI

struct mainView: View {
    
    @State private var text = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                header()
                
                VStack(spacing: 20) {
                    Text("Chair")
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack() {
                            ForEach(Model.chairs){
                                item in
                                NavigationLink{
                                    DetailView(item:item)
                                }label: {
                                    CardView(item:item)
                                }
                            }
                        }.padding(.leading)
                    }
                }
                Spacer(minLength: 70)
                
                VStack() {
                    Text("Sofas")
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.accentColor)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack {
                            ForEach(Model.sofas){
                                item in NavigationLink{
                                    DetailView(item:item)
                                }label: {
                                    CardView(item:item)
                                }
                            }
                        }.padding(.leading)
                    }
                }
            }
            .background(Color(red: 0.951, green: 0.951, blue: 0.951))
        }
    }
    @ViewBuilder
    private func header() -> some View {
        VStack(spacing: 18){
            //TextField
            
            HStack{
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Search...", text: $text)
                }
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                
                //Button
                
                Button{
                    print("filter")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .padding()
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
