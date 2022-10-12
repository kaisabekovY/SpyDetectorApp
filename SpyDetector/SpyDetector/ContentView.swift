//
//  ContentView.swift
//  SpyDetector
//
//  Created by Yeldar Kaisabekov on 28.08.2022.
//

import SwiftUI

struct ContentView: View {
    //Set of colors
    @State var colors = [Color.black, Color.red, Color.green, Color.blue, Color.purple]
    @State var meanings = ["Black","Red","Green","Blue","Purple"]
    //Score
    @State var score = 0
    //Pics to change
    @State var success = "success"
    //Indexes
    @State var leftColor = 0
    @State var leftMeaning = 0
    @State var rightColor = 0
    @State var rightMeaning = 0
    @State var randSet = 0...4
    
    
    
    
    func plusScoreNo(){
        if leftMeaning != rightColor{
            success = "success"
            score += 15
            newSetOfColors()
        }else{
            success = "fail"
            score = max(0, score - 5)
            newSetOfColors()
        }
    }
    
    
    func plusScoreYes(){
        if leftMeaning == rightColor{
            success = "success"
            score += 15
            newSetOfColors()
        }else{
            success = "fail"
            score = max(0, score - 5)
            newSetOfColors()
        }
    }
    
    func newSetOfColors(){
        leftColor = Int.random(in: randSet)
        leftMeaning = Int.random(in: randSet)
        rightColor = Int.random(in: randSet)
        rightMeaning = Int.random(in: randSet)
        
    }
    
    
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
                            Text("Score")
                                .foregroundColor(Color.white)
                                .bold()
                            Text(String(score))
                                .foregroundColor(Color.white)
                            
                        }
                        Spacer()
        //Timer
                        VStack{
                            Text("TIME")
                                .foregroundColor( Color.white)
                                .bold()
                            Text("0")
                            
                                .foregroundColor(Color.white)
                            
                        }
                        Spacer()
                        
                        
                        
                    }
                //Compare meaning and color
                    Text("Does the meaning match color?")
                    .foregroundColor(Color.white).font(.largeTitle).fontWeight(.heavy).multilineTextAlignment(.center).padding(.vertical, 50.0)
                    ZStack{
                        Image(success)
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
                                    Text(meanings[leftMeaning])
                                        .foregroundColor(colors[leftColor])
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
                                    Text(meanings[rightMeaning])
                                        .foregroundColor(colors[rightColor])
                                        .bold()
                                }
                                
                                
                            }
                            Spacer()
                        }
                    
                    }
                    Spacer()
                //Buttons
                    HStack{
                        Spacer()
                        Button(action:{
                            plusScoreNo()

                                
                                
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
                            plusScoreYes()
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

