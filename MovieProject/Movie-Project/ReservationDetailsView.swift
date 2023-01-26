//
//  ReservationDetails.swift
//  NadaMovieDetailsView
//
//  Created by N on 26/01/2023.
//

import SwiftUI

struct ReservationDetails: View {
    var body: some View {
        TabView {
            previous()

                        .edgesIgnoringSafeArea(.top)
                        .tabItem {
                            Image(systemName: "1.circle")
                            Text("previous")
                        }
                    
           coming()
                        .edgesIgnoringSafeArea(.top)
                        .tabItem {
                            Image(systemName: "2.circle")
                            Text("Coming")
                        }
        }//end of tabView
    }
}



struct previous: View {
    var body: some View {
      Rectangle()
            .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
            .frame(width: 320 , height: 150)
            .overlay(){
                VStack {
                    HStack{
                        
                        Image("Cinderella2").resizable().frame(width: 120 , height: 100).padding(.top)
                        
                        VStack{
                            Text("Movie name").padding()
                            HStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea().shadow(radius: 20)
                                    .frame(width: 50 , height: 40)
                                    .overlay(){
                                        Button("3:00"){}
                                    }
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea().shadow(radius: 20)
                                    .frame(width: 50 , height: 40)
                                    .overlay(){
                                        Button("3:30"){}
                                    }
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea().shadow(radius: 20)
                                    .frame(width: 50 , height: 40)
                                    .overlay(){
                                        Button("4:00"){}
                                    }
                            }
                           
                        }
                        //.bold()
                     
                    }
                    RoundedRectangle(cornerRadius: 20)
                       .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
                        .frame(width: 320 , height: 40)
                        .overlay(){
                            HStack{
                                Button("Edit"){}
                                    .padding()
                                Button("Delete"){}
                                    .padding()
                            }
                        }
                }
            }
    }
}

struct coming: View {
    var body: some View {
        Text("No Coming movie")
    }
}

struct ReservationDetails_Previews: PreviewProvider {
    static var previews: some View {
        ReservationDetails()
    }
}

