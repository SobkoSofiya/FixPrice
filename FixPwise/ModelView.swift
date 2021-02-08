//
//  ModelView.swift
//  FixPwise
//
//  Created by Sofi on 08.02.2021.
//

import Foundation
import SwiftUI



class ModelView: ObservableObject {
    @Published var gym:[Model23] = []

    init(){
       
        gym.append(Model23(image: ("f0"), tile: "Зимний прованс"))
        gym.append(Model23(image: ("f1"), tile: "Коллекция Мрамор"))
        gym.append(Model23(image: ("f2"), tile: "Сейчас покупают"))
        gym.append(Model23(image: ("f3"), tile: "Стратегический запас"))
        gym.append(Model23(image: ("f4"), tile: "Сад и огород"))
        gym.append(Model23(image: ("f5"), tile: "Продукты и напитки"))
        gym.append(Model23(image: ("f6"), tile: "Для дома"))
        gym.append(Model23(image: ("f7"), tile: "Для дома"))
        gym.append(Model23(image: ("f8"), tile: "Зимний прованс"))
        gym.append(Model23(image: ("f9"), tile: "Стратегический запас"))
        gym.append(Model23(image: ("f10"), tile: "Зимний прованс"))

    }
}


