//
//  ContentView.swift
//  SpyDetector
//
//  Created by Yeldar Kaisabekov on 28.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack{
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(){
                    HStack{
                        Spacer()
                        VStack{
                            Text("SCORE")
                                .foregroundColor(Color.white)
                                .bold()
                            Text("100")
                                .foregroundColor(Color.white)
                            
                        }
                        Spacer()
                        VStack{
                            Text("TIME")
                                .foregroundColor( Color.white)
                                .bold()
                            Text("33")
                                .foregroundColor(Color.white)
                            
                        }
                        Spacer()
                        
                        
                        
                    }
                    Text("Does the meaning match color?")
                    .foregroundColor(Color.white).font(.largeTitle).fontWeight(.heavy).multilineTextAlignment(.center).padding(.vertical, 50.0)
                    ZStack{
                        Image("success")
                        HStack{
                            Spacer()
                            VStack{
                                ZStack{
                                    Image("bubble")
                                    Text("Meaning")
                                        .foregroundColor(Color.white)
                        
                                    
                                }
                                
                                ZStack{
                                   
                                    Rectangle()
                                        .frame(width: 120.0, height:200.0)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(25, antialiased: true)
                                    Text("Green")
                                        .foregroundColor(Color.red)
                                        .bold()
                                }
                            }
                            Spacer()
                            VStack{
                                ZStack{
                                    Image("bubble")
                                    Text("Text Color")
                                        .foregroundColor(Color.white)
                                        
                                }
                                
                                ZStack{
                                   
                                    Rectangle()
                                        .frame(width: 120.0, height:200.0)
                                        .foregroundColor(Color.white)
                                        .cornerRadius(25, antialiased: true)
                                    Text("Green")
                                        .foregroundColor(Color.green)
                                        .bold()
                                }
                                
                                
                            }
                            Spacer()
                        }
                    
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        Button(action: {
                            print("Hello, World")
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 100.0, height: 50.0)
                                    .foregroundColor(Color.black)
                                    .cornerRadius(10)
                                    .opacity(0.4)
                                Text("No")
                                    .foregroundColor(Color.white)
                                    
                                    
                            }
                        })
                        Spacer()
                        Button(action: {
                            print("Hello, World")
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 100.0, height: 50.0)
                                    .foregroundColor(Color.black)
                                    .cornerRadius(10)
                                    .opacity(0.4)
                                Text("YES")
                                    .foregroundColor(Color.white)
                                    
                                    
                            }
                        })
                        Spacer()
                    
                    }
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

