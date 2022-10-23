//
//  ContentView.swift
//  myGrocery
//
//  Created by AWS on 10/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var items = ["pepsi", "calc", "ios", "Tomato", "vsCode"]
    @State var enter = ""
    
    
    var body: some View {
    
        VStack{
            HStack{
                
                List(items, id: \.self){ item in
                    
                    HStack{
                        
                    Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 125 , height: 125)
                        
                    Text(item)
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                     
                        
                        
                        
                    }
                }
            }
            
            
            HStack{
                Button {
                    items.append(enter)
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 50))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .background(Color.green)
                        .cornerRadius(10)
                        .padding()
                    
                }

        
                TextField("enter item name" , text: $enter)
                
                    
                
                Button {
                    items.remove(at: 1)
                } label: {
                    Image(systemName: "minus")
                        .font(.system(size: 50))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50)
                        .background(Color.red)
                        .cornerRadius(10)
                        .padding()
                }

                Button {
                    items.append(items.randomElement() ?? "a")
                    
                } label: {
                    Image(systemName: "questionmark")
                        .font(.system(size: 50))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .frame(width: 50, height: 70)
                        .cornerRadius(7)
                        .padding()
                }

              
                                    
            }.padding()
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
