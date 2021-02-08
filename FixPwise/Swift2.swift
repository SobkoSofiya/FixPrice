//
//  Swift2.swift
//  FixPwise
//
//  Created by Sofi on 08.02.2021.
//

import SwiftUI

struct Swift2: View {
    @State var Swift22 = 0
    var body: some View {
        if Swift22 == 0{
            ContentView(Swift22: $Swift22)
        } else if Swift22 == 1{
            Mainn(Swift22: $Swift22)
        }else if Swift22 == 2{
            Catalog(Swift22: $Swift22)
        }
        else if Swift22 == 3{
            Mape(Swift22: $Swift22)
        }
        else if Swift22 == 4{
           
        }
        else if Swift22 == 5{
            MapStrucrt(Swift22: $Swift22)
        }
    }
}

struct Swift2_Previews: PreviewProvider {
    static var previews: some View {
        Swift2()
    }
}
