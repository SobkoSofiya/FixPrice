//
//  Mape.swift
//  FixPwise
//
//  Created by Sofi on 08.02.2021.
//

import SwiftUI
import MapKit
struct Mape: View {
    @Binding var Swift22:Int
    @State var tex = ""
    var body: some View {
        ZStack{
            
           
            VStack(spacing:0){
                ZStack(alignment:.bottom){
                Color("gren")
                HStack{
                    Text("Магазины").font(.custom("", size: 28)).padding()
                    Spacer()
                    Text("МОСКВА").font(.custom("", size: 15)).padding()
                }.foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width, height: 120, alignment: .center)
                HStack{
                    Image("lup").resizable().frame(width: 20, height: 20, alignment: .center).padding()
                    TextField("Поиск", text: $tex)
                    
                }
                Spacer()
                bottomMenu(Swift22: $Swift22)
            }
            Button(action: {
                Swift22 = 5
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 50).strokeBorder(Color.gray, lineWidth: 1).opacity(0.2)
                        .frame(width: 110, height: 60, alignment: .center).foregroundColor(Color("be"))
                    HStack{
                    Text("КАРТА").foregroundColor(Color("gren"))
                        Image("map").resizable().frame(width: 30, height: 30, alignment: .center)
                    }
                }
            }).offset(x:130, y: 280)
          
            }.edgesIgnoringSafeArea(.all)
        
    }
        
}
//
//struct Mape_Previews: PreviewProvider {
//    @Binding var Swift22:Int
//    static var previews: some View {
//        Mape(Swift22: $Swift22)
//    }
//}





struct MapStrucrt:View {
    @Binding var Swift22:Int
    @State var manager =  CLLocationManager()
    @ObservedObject var locDeleg = LocalDeleg()
    var body: some View{
        ZStack{
            VStack(spacing:0){
                ZStack(alignment:.bottom){
                Color("gren")
                HStack{
                    Button(action: {
                        Swift22 = 3
                    }, label: {
                        Image("arr").resizable().frame(width: 30, height: 30, alignment: .center).padding().foregroundColor(.white)
                    })
                  
                    Text("Магазины").font(.custom("", size: 28)).padding()
                    Spacer()
                   
                }.foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width, height: 120, alignment: .center)
        MapView(region: $locDeleg.region, pin: $locDeleg.pin)
                Spacer()
                bottomMenu(Swift22: $Swift22)
                
            }
        }.onAppear{
            locDeleg.getPin()
            manager.delegate = locDeleg
            manager.requestWhenInUseAuthorization()
            manager.startUpdatingLocation()
        }.edgesIgnoringSafeArea(.all)
    }
}


struct MapView:View {
    @Binding var region : MKCoordinateRegion
    @Binding var pin: [Pin]
    var body: some View{
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: pin){ place in
            MapAnnotation(coordinate: place.locat){
                Image(systemName: "plus")
            }
        }
    }
}

struct Pin: Identifiable {
    var id = UUID()
    var locat: CLLocationCoordinate2D
   
}



class LocalDeleg: NSObject,ObservableObject, CLLocationManagerDelegate {
    @Published var region: MKCoordinateRegion = MKCoordinateRegion()
    @Published var pin: [Pin] = []
    
    func getPin()  {
        pin.append(Pin( locat: CLLocationCoordinate2D(latitude: 34, longitude: 55)))
        pin.append(Pin( locat: CLLocationCoordinate2D(latitude: 35, longitude: 55)))
        pin.append(Pin( locat: CLLocationCoordinate2D(latitude: 36, longitude: 55)))
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locatios:[CLLocation]) {
        region = MKCoordinateRegion(center: locatios.last!.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
    }
}
