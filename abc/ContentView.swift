//
//  ContentView.swift
//  abc
//
//  Created by XIE on 2019/10/9.
//  Copyright © 2019 XIE. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        //Wrap in Vstack
        VStack {
            //First Tools bar in Hstack
            HStack {
                
                Text("討論區")
                    .font(.title)
                    .frame(width: 100 , height: 50)
                    .padding(.horizontal,50)
                
                    
                //new line
              
                Button(action: {test()}) {
                    Text("重新整理")
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("搜尋")
                }
            }
            .frame(width: 400 , height: 50)
            //.padding(20)
            
            HStack (spacing: 60){
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("看板")
                }
               
                //.position(x : 100,y:25)

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("熱門")
                }
                //.position(x : 50,y:25)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("最新")
                }
              //  .position(x : 30,y:25)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("追蹤")
                }
              //  .position(x : 0,y:25)
                
                
            }
            .frame(width: 400 , height: 50)
            
            
            Spacer()
            
            VStack {
                Text("Hello World 3幹林涼老雞掰")
                .font(.title)
                
            }
            Text("Hello World")
                .font(.title)
            Text("hello")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("helloabcß")
                
            
            //Spacer()
        }
           
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func test() -> Void{
    let temp = shit_stuff()
    temp.Request_start()
}
