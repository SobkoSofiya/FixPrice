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
            Main(Swift22: $Swift22)
        }else if Swift22 == 2{
            catal(Swift22: $Swift22)
        }
        else if Swift22 == 3{
            magaz(Swift22: $Swift22)
        }
        else if Swift22 == 4{
            
        }
    }
}

struct Swift2_Previews: PreviewProvider {
    static var previews: some View {
        Swift2()
    }
}
