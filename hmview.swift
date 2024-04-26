//  Created by Omveer Panwar on 22/03/24.

import SwiftUI

struct hmview: View {
    @State private var search : String = ""
    var body: some View {
       
        ZStack{
                Color("Bg").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack (alignment: .leading){
                    
                    HStack{
                        Text("Hello OV Here, ")
                            .fontWeight(.medium)
                            .font(.title2)
                   
                        Spacer()
                        
                        Image("Profile").resizable().clipShape(Circle()).frame(width: 50,height: 50)
                    }
                    VStack(alignment: .leading){
                        Text("What are you looking").font(.title).fontWeight(.regular)
                        Text("For Today ?").font(.title).fontWeight(.bold)
                    }
                    HStack{
                        Image("Search").padding(.trailing,8)
                        TextField("Search Furniture", text: $search)
                    }.font(.title2)
                    
                    Divider()
                    
                    VStack{
                        HStack{
                            VStack{
                                Image("hiddenlake").resizable().cornerRadius(10)
                                Text("HiddenLake").fontWeight(.semibold)
                            }
                            VStack{
                                Image("icybay").resizable().cornerRadius(10)
                                Text("IcyBay").fontWeight(.semibold)
                            }
                        }.frame(height: 250)
                        Divider()
                        
                        HStack{
                            VStack{
                                Image("rainbowlake").resizable().cornerRadius(10)
                                Text("rainbowlake").fontWeight(.semibold)
                            }
                            VStack{
                                Image("stmarylake").resizable().cornerRadius(10)
                                Text("stmarylake").fontWeight(.semibold)
                            }
                        }.frame(height: 250)
                      
                        
                    }
                }.padding()
            }
        }
}

#Preview {
    hmview()
}
