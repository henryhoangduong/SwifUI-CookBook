//
//  CustomRowApp.swift
//  CustomRow
//
//  Created by mac on 17/12/2567 BE.
//

import SwiftUI

@main
struct CustomRowApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(weatherData: WeatherInfo.weatherData)
        }
    }
}
