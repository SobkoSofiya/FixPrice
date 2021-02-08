//
//  ContentView.swift
//  FixPwise
//
//  Created by Sofi on 08.02.2021.
//

import SwiftUI

struct ContentView: View {
    @Binding var Swift22:Int
    @State var nam = ""
    @State var pass = ""
    var body: some View {
        ZStack{
            VStack(spacing:0){
                ZStack{
            Color("gren")
            VStack{
                ZStack{
                    HStack{
                        Button(action: {}, label: {
                            Image("arr").resizable().frame(width: 30, height: 30, alignment: .center).padding().foregroundColor(.white)
                        })
                     
                        Spacer()
                    }.padding(.top,40)
                Text("Вход в личный кабинет").padding(.top,40)
                    .padding().foregroundColor(.white).font(.custom("", size: 16))
                }
            }
                }.frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
            ZStack{
                Color.white
                VStack(spacing:50){
                    VStack(spacing:18){
                    TextField("Номер телефона", text: $nam).frame(width: UIScreen.main.bounds.width-29, height: 1, alignment: .center)
                        Rectangle().frame(width: UIScreen.main.bounds.width-29, height: 1.5, alignment: .center).foregroundColor(.gray).opacity(0.3)
                    }
                    VStack(spacing:18){
                        HStack(spacing:0){
                    TextField("Пароль", text: $pass).frame(width: UIScreen.main.bounds.width-49, height: 1, alignment: .center)
                            Image("eye").resizable().frame(width: 23, height: 20, alignment: .center)
                        }.frame(width: UIScreen.main.bounds.width-29, height: 1, alignment: .center)
                        Rectangle().frame(width: UIScreen.main.bounds.width-29, height: 1.5, alignment: .center).foregroundColor(.gray).opacity(0.3)
                    }
                    Button(action: {}, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: UIScreen.main.bounds.width-100, height: 80, alignment: .center).foregroundColor(Color("gren"))
                            Text("Войти").foregroundColor(.white).font(.custom("", size: 22))
                        }
                    })
                    Text("Забыли пароль?").font(.custom("", size: 17)).offset( y: -20).foregroundColor(Color("bu"))
                    Spacer()
                }.offset( y: 40)
            }
                bottomMenu(Swift22: $Swift22)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Main()
//    }
//}
struct bottomMenu:View {
    @Binding var Swift22:Int
    var body: some View{
        ZStack(alignment:.top){
            Color("greyy")
            HStack(spacing:0){
                Button(action: {
                    Swift22 = 1
                }, label: {
                    VStack(spacing:4){
                        Image("home").resizable().frame(width: 20, height: 20, alignment: .center).foregroundColor(.gray)
                        Text("Главная").font(.custom("", size: 14)).foregroundColor(Swift22 == 1 ?   .blue : .gray)
                    }
                }).frame(width: UIScreen.main.bounds.width/4, height: 34, alignment: .center)
                Button(action: {
                    Swift22 = 2
                }, label: {
                    VStack(spacing:4){
                        Image("menu").resizable().frame(width: 20, height: 20, alignment: .center).foregroundColor(.gray)
                        Text("Каталог").font(.custom("", size: 14)).foregroundColor(Swift22 == 2 ?   .blue : .gray)
                    }
                    
                }).frame(width: UIScreen.main.bounds.width/4, height: 34, alignment: .center)
              
                Button(action: {
                    Swift22 = 3
                }, label: {
                    VStack(spacing:4){
                        Image("locat").resizable().frame(width: 20, height: 20, alignment: .center).foregroundColor(.gray)
                        Text("Магазины").font(.custom("", size: 14)).foregroundColor(Swift22 == 3 || Swift22 == 5 ?   .blue : .gray)
                    }
                    
                }).frame(width: UIScreen.main.bounds.width/4, height: 34, alignment: .center)
              
                Button(action: {
                    Swift22 = 0
                }, label: {
                    VStack(spacing:4){
                        Image("pro").resizable().frame(width: 15, height: 20, alignment: .center).foregroundColor(.gray)
                        Text("Профиль").font(.custom("", size: 14)).foregroundColor(Swift22 == 0 ?   .blue : .gray)
                    }
                    
                }).frame(width: UIScreen.main.bounds.width/4, height: 34, alignment: .center)
               
            }.padding(15)
        }.frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center).border(Color.black.opacity(0.1), width: 1
        )
    }
}



//struct Main:View {
//    @Binding var Swift22:Int
//    var body: some View{
//        ZStack{
//            VStack(spacing:0){
//                Text("Главная").font(.custom("", size: 40)).foregroundColor(.black).offset(y: 100)
//                Spacer()
//                bottomMenu(Swift22: $Swift22)
//            }
//        }.edgesIgnoringSafeArea(.all)
//    }
//}
//
//struct catal:View {
//    @Binding var Swift22:Int
//    var body: some View{
//        ZStack{
//            VStack(spacing:0){
//                Text("Каталог").font(.custom("", size: 40)).foregroundColor(.black).offset(y: 100)
//                Spacer()
//                bottomMenu(Swift22: $Swift22)
//            }
//        }.edgesIgnoringSafeArea(.all)
//    }
//}
//
//
//struct magaz:View {
//    @Binding var Swift22:Int
//    var body: some View{
//        ZStack{
//            VStack(spacing:0){
//                Text("Магазины").font(.custom("", size: 40)).foregroundColor(.black).offset(y: 100)
//                Spacer()
//                bottomMenu(Swift22: $Swift22)
//            }
//        }.edgesIgnoringSafeArea(.all)
//    }
//}
//
//

