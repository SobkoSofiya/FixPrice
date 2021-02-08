//
//  Mainn.swift
//  FixPwise
//
//  Created by Sofi on 08.02.2021.
//

import SwiftUI

struct Mainn: View {
    @Binding var Swift22:Int
    var body: some View {
        ZStack{
            
            
            VStack(spacing:0){
                ZStack{
                Color("gren")
                    HStack(alignment:.top,spacing:0){
                    Image("ic").resizable().frame(width: 30, height: 30, alignment: .center)
                        Text("FIX").font(.custom("", size: 30   )).foregroundColor(Color("bu"))
                        Text("price").font(.custom("", size: 20   )).foregroundColor(.white)
                    }.offset( y: 20)
                }.frame(width: UIScreen.main.bounds.width, height: 120, alignment: .center)
                ScrollView{
                TabView{
                    Image("1").resizable().frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center).tag([0])
                    Image("2").resizable().frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center).tag([1])
                    Image("3").resizable().frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center).tag([2])
                    Image("1").resizable().frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center).tag([3])
                    Image("2").resizable().frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center).tag([4])
                    Image("3").resizable().frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center).tag([5])
                    Image("1").resizable().frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center).tag([6])
                    Image("2").resizable().frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center).tag([7])
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always)).frame(width: UIScreen.main.bounds.width, height: 250, alignment: .center)
                ZStack{
                    Color.gray.opacity(0.1)
                    VStack(spacing:0){
                    HStack{
                        Text("Сезонные товары").font(.custom("", size:26)).padding()
                        Spacer()
                        Text("ВСЕ").padding().foregroundColor(Color("bu"))
                    }
                        ScrollView(.horizontal){
                            HStack{
                            ZStack(alignment:.top){
                                Color.white
                                VStack{
                            Image("1").resizable().frame(width: 150, height: 150, alignment: .center)
                                Text("Чистящее средствоб Санфорб Булизна гель 3 в 1б 450 г")
                                }.padding()
                            }.frame(width: 220, height: 270, alignment: .center).border(Color.black.opacity(0.1)).shadow(radius: 2)
                            ZStack(alignment:.top){
                                Color.white
                                VStack{
                            Image("1").resizable().frame(width: 150, height: 150, alignment: .center)
                                Text("Чистящее средствоб Санфорб Булизна гель 3 в 1б 450 г")
                                }.padding()
                            }.frame(width: 220, height: 270, alignment: .center).border(Color.black.opacity(0.1)).shadow(radius: 2)
                            ZStack(alignment:.top){
                                Color.white
                                VStack{
                            Image("1").resizable().frame(width: 150, height: 150, alignment: .center)
                                Text("Чистящее средствоб Санфорб Булизна гель 3 в 1б 450 г")
                                }.padding()
                            }.frame(width: 220, height: 270, alignment: .center).border(Color.black.opacity(0.1)).shadow(radius: 2)
                            }
                        }.padding()
                        HStack{
                            Text("Новинки").font(.custom("", size:26)).padding()
                            Spacer()
                            Text("ВСЕ").padding().foregroundColor(Color("bu"))
                        }
                            ScrollView(.horizontal){
                                HStack{
                                ZStack(alignment:.top){
                                    Color.white
                                    VStack{
                                Image("1").resizable().frame(width: 150, height: 150, alignment: .center)
                                    Text("Чистящее средствоб Санфорб Булизна гель 3 в 1б 450 г")
                                    }.padding()
                                }.background(RoundedRectangle(cornerRadius: 5)).frame(width: 220, height: 270, alignment: .center).shadow(radius: 2).border(Color.black.opacity(0.1))
                                ZStack(alignment:.top){
                                    Color.white
                                    VStack{
                                Image("1").resizable().frame(width: 150, height: 150, alignment: .center)
                                    Text("Чистящее средствоб Санфорб Булизна гель 3 в 1б 450 г")
                                    }.padding()
                                }.frame(width: 220, height: 270, alignment: .center).border(Color.black.opacity(0.1)).shadow(radius: 2)
                                ZStack(alignment:.top){
                                    Color.white
                                    VStack{
                                Image("1").resizable().frame(width: 150, height: 150, alignment: .center)
                                    Text("Чистящее средствоб Санфорб Булизна гель 3 в 1б 450 г")
                                    }.padding()
                                }.frame(width: 220, height: 270, alignment: .center).border(Color.black.opacity(0.1)).shadow(radius: 2)
                                }
                            }.padding()
                    }
                }
                }
                Spacer()
                bottomMenu(Swift22: $Swift22)
                
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct Mainn_Previews: PreviewProvider {
//    static var previews: some View {
//        Mainn()
//    }
//}
