//
//  HomeView.swift
//  Movie-Project
//
//  Created by سرّاء. on 04/07/1444 AH.
//

import SwiftUI

struct HomeView: View {
    @State var search: String = ""
    let movieCards = MoviePoster.mCards
    var body: some View {
        ZStack{
            Color("Background").ignoresSafeArea()
            
            VStack {
                Text("Movies")
                    .font(.largeTitle)
                    .bold()
                VStack(alignment: .leading){
               
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .padding(.leading)
                            TextField("Search", text: $search)
                        }.frame(width: 340, height: 40)
                        .background(Color.white)
                        .cornerRadius(8)
                    Button(action: {}, label: {
                        Text("Descover by")
                            .font(.title3)
                            .bold()
                            .foregroundColor(Color.yellow)
                            .padding(.top)
                    })
                }
                
                
                VStack(alignment: .leading){
                    Text("Showing Now")
                        .font(.title2)
                        .bold()
                        .padding()
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: true){
                        HStack{
                            ForEach(movieCards, id: \.id) {i in
                                ZStack {
                                    VStack(alignment: .leading){
                                        Image(i.image)
                                            .resizable()
                                            .frame(width: 120, height: 150)
                                            .cornerRadius(16)
                                        
                                        VStack(alignment: .leading){
                                            HStack{
                                                ZStack{
                                                    HStack{
                                                        Image(systemName: "star.fill")
                                                            .foregroundColor(Color.yellow)
                                                            .font(.footnote)
                                                        Text(i.rate)
                                                            .font(.footnote)
                                                    }
                                                }.frame(width: 50, height: 20)
                                                    .background(Color("Background"))
                                                    .cornerRadius(8)
                                                Spacer()
                                                Text(i.des)
                                                    .font(.footnote)
                                            }.padding(.trailing)
                                            Text(i.name)
                                                .bold()
                                            
                                        }
                                    }.frame(width: 120, height: 210)
                                        .background(Color.white)
                                        .cornerRadius(8)
                                   
                                }
                            }
                        }
                    }.padding(.bottom)
              
                    Text("Coming Soon")
                        .font(.title2)
                        .bold()
                        .padding()
                    
                    
                    
                    ScrollView(.horizontal, showsIndicators: true){
                        HStack{
                            ForEach(movieCards, id: \.id) {i in
                                ZStack {
                                    VStack(alignment: .leading){
                                        Image(i.image)
                                            .resizable()
                                            .frame(width: 120, height: 150)
                                            .cornerRadius(16)
                                        
                                        VStack(alignment: .leading){
                                            HStack{
                                                ZStack{
                                                    HStack{
                                                        Image(systemName: "star.fill")
                                                            .foregroundColor(Color.yellow)
                                                            .font(.footnote)
                                                        Text(i.rate)
                                                            .font(.footnote)
                                                    }
                                                }.frame(width: 50, height: 20)
                                                    .background(Color("Background"))
                                                    .cornerRadius(8)
                                                Spacer()
                                                Text(i.des)
                                                    .font(.footnote)
                                            }.padding(.trailing)
                                            Text(i.name)
                                                .bold()
                                            
                                        }
                                    }.frame(width: 120, height: 210)
                                        .background(Color.white)
                                        .cornerRadius(8)
                                   
                                }
                            }
                        }
                    }.padding(.bottom)
                    
                   
                }
                
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
