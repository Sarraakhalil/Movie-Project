

import SwiftUI

struct MovieDetailsview: View {
    @State var myDate = Date.now
    @State var ticketNumber = 0
    @State var priceSliderValue : Float = 0.0
    var body: some View {
        ZStack{
            Color("c1").ignoresSafeArea()
            // Image("img4").ignoresSafeArea()
            
            VStack{
                
                Text("Movie Details")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding(50)
                
                RoundedRectangle(cornerRadius: 60)
                    .fill(Color(UIColor.secondarySystemBackground)).ignoresSafeArea()
                   
                    .overlay(){
                        VStack(alignment: .leading, spacing: 2.0){
                            Text("Movie name")
                                .font(.title)
                                .padding()
                                .padding(.leading , 30)
                            Text("Movie description")
                                .font(.title)
                                
                                .padding()
                                .padding(.leading , 30)

                            VStack{
                                DatePicker(selection: $myDate, label: {
                                    
                                    Text("Chose Date and time") .frame(width: 200 , height: 100)
                                    
                                }
                                ).padding(.bottom)
                            }
                            Stepper(value: $ticketNumber, in: 1...30) {
                                Text("Ticket Number = \(ticketNumber)")
                            }.padding(70)
                            
                            HStack {
                                Text("Price").padding(.leading,30)
                                Slider(value: $priceSliderValue, in: 0...200)
                                Text(" \(priceSliderValue)")
                                //    .format:("%.2f")
                            }.padding()
                          
                            
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.secondary)
                                .frame(width: 300 , height: 40)
                                .padding(.leading , 72.0)
                                .overlay(){
                                    Button("Booking") {
                                        
                                        
                                    }.foregroundColor(.primary)
                                        .padding(.leading , 100)
                                    
                                }
                            
                            
                            Button(action: {
                                print("Button action")
                            }) {
                                HStack {
                                    Image(systemName: "bookmark.fill")
                                    Text("Bookmark")
                                }
                            }.buttonStyle(GradientButtonStyle())//end of animavtion button
                            
                        }
                    }
            }
            
        }
    }
}

struct MovieDetailsview_Previews: PreviewProvider {
    static var previews: some View {
       MovieDetailsview()
    }
}



struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(15.0)
    }
}
