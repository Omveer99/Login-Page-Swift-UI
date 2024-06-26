import SwiftUI

struct LoginPage: View {
  @State var username = ""
    @State var pass = ""
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading, content: {
                    
                    Image("bbs").resizable().frame(width: 400, height: 350)
                    Text("LOGIN").font(.title).bold().fontWeight(.black).padding().padding(.leading,20)
                 
                    
                })
                     ZStack(alignment: .leading) {
                                       Text("@")
                                           .font(.title)
                                           .foregroundColor(.gray)
                                           .padding(.leading, 8)
                                       TextField("\tEnter your Username", text: $username)
                                           .padding(.leading, 30)
                                           .padding(.trailing, 8).italic()
                                           .textFieldStyle(PlainTextFieldStyle())
                                   }
                     .overlay(Rectangle().frame(height: 1).padding(.top, 35).foregroundColor(.gray)).padding()
                
                ZStack(alignment: .leading) {
                                  Image(systemName:"lock.fill")
                                      .font(.title)
                                      .foregroundColor(.gray)
                                      .padding(.leading, 8)
                                  SecureField("\tEnter Password", text: $pass)
                                      .padding(.leading, 30)
                                      .padding(.trailing, 8)
                                      .textFieldStyle(PlainTextFieldStyle()).italic()
                    Text("Forgot?")
                        .font(.title3).textFieldStyle(.roundedBorder)
                        .foregroundColor(.blue)
                        .padding(.leading, 280).italic()
                        
                              }
                .overlay(Rectangle().frame(height: 1).padding(.top, 35).foregroundColor(.gray)).padding()
                                
                    Button(action: {
                        print("Button Tapped")
                    }){
                        Text("Login").font(.title2).fontWeight(.bold).padding().foregroundColor(.white).background(Color.blue).cornerRadius(10)
                    }.frame(width: 500, height: 50)
                        .padding()
                
                Text("OR")
                                .font(.title3)
                                .foregroundStyle(.gray) //jjhgj
                                
                Spacer()
                               
                HStack{
                    Image("google").resizable().frame(width:40,height: 40)
                    Text("Login with Google")
                                    .font(.title3)
                }
                
            }
           .navigationBarTitle("Login Page", displayMode: .inline)
        }
    }
}


#Preview {
    LoginPage()
}

