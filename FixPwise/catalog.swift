//
//  catalog.swift
//  FixPwise
//
//  Created by Sofi on 08.02.2021.
//

import SwiftUI



//struct Vi:View {
//    @ObservedObject var model = ModelView()
//    var body: some View{
//        Catalog(gym: $model.gym)
//    }
//}

struct Catalog: View {
    @State var text = ""
    @Binding var Swift22:Int
    @ObservedObject var model = ModelView()
    var body: some View {
        ZStack{
            
            
            VStack(spacing:0){
                ZStack(alignment:.bottom){
                Color("gren")
                HStack{
                    Text("Каталог товаров").font(.custom("", size: 28)).padding()
                    Spacer()
                    Text("МОСКВА").font(.custom("", size: 15)).padding()
                }.foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width, height: 120, alignment: .center)
               
            
                
                List{
                    HStack{
                        Image("lup").resizable().frame(width: 20, height: 20, alignment: .center).padding()
                        TextField("Поиск", text: $text).onTapGesture {
                           
                        }
                    }
                    ForEach(model.gym, id:\.self){ item in
                   
                        HStack{
                           Image("\(item.image)").resizable().frame(width: 30, height: 30, alignment: .center).padding()
//                            Spacer()r
                            Text("\(item.tile)").font(.custom("", size: 18))
                        }
                   }
                }
               
                bottomMenu(Swift22: $Swift22)
              
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}
//
//struct catalog_Previews: PreviewProvider {
//    static var previews: some View {
//        Catalog()
//    }
//}


