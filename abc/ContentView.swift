//
//  ContentView.swift
//  abc
//
//  Created by XIE on 2019/10/9.
//  Copyright © 2019 XIE. All rights reserved.
//

import SwiftUI

var myatricle = Article(title: "title", author: "ANDY", data: "data", content: "content")

let rawTest1 = Article(title: "omae wa", author: "black", data: "2019/12/4", content: "幹林涼")
let rawTest2 = Article(title: "mou shindeiru", author: "dick", data: "2019/12/4", content: "老雞掰")
//@State var whickview: Int = 0

struct ArticleNewRow: View {
   // var article : Article
    var myatricle : Article
    var body: some View {
        HStack {
            Text("alahuagua")
            Text(myatricle.title)
            
        }
    }
}
struct Setting: View {
    var body: some View{
        Text(" abc")
    }
}
//AAAA
struct Board: View {
   // var article : Article
    @State var val = [rawTest1, rawTest2]
    @State  var showView = false
    var body: some View {
        //wrap in a navigationview
        NavigationView{
            //Wrap in Vstack
            VStack {
                //First Tools bar in Hstack
                HStack {
                    
                    Button(action: {
                        self.val.append(Article(title: "a", author: "b", data: "c", content: "d"))
                        // daadprint("size ", val.count)
                        
                    }) {
                        Text("重新整理")
                    }
                    
                    Button(action: {}) {
                        Text("搜尋")
                    }
                    
                    NavigationLink(destination: Board(), isActive: $showView) {
                                   EmptyView()
                               }
                }
                .frame(width: 400 , height: 50)
                //.padding(20)
                
                HStack (spacing: 60){
                    
                    Button(action: {
                        self.showView = true
                    }) {
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
                List(val) { item in
                    ArticleNewRow(myatricle: item)
                }
                VStack {
                    Text("Hello World 3 I am black Dick")
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
    
}

struct ContentView: View {
    @State var showView2 = false
    var body: some View {
        
          NavigationView{
            
            VStack {
               HStack{
                Text("起始畫面")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    

               }
                Spacer()
                HStack{
                    Button(action: {
                        self.showView2 = true
                    }) {
                        Text("討論區")
                        .font(.title)
                    }
                    Spacer()
                    Button(action: {
                        self.showView2 = true
                    }) {
                        Text("交通")
                            .font(.title)
                        
                    }
                    Spacer()
                    Button(action: {
                        self.showView2 = true
                    }) {
                        Text("設定")
                        .font(.title)
                    }
                    Spacer()
                    
                }
                .background(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/)
                .padding(.leading)
                .padding(.trailing)
                
                
               
                NavigationLink(destination: Board(), isActive: $showView2) {
                    EmptyView()
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

func test() -> Void{
    let temp = shit_stuff()
    temp.Request_start()
}
