//
//  ContentView.swift
//  CustomRow
//
//  Created by mac on 17/12/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var weatherData: [WeatherInfo]
    var body: some View {
        List {
            ForEach(weatherData) { weather in
                WeatherRow(weather: weather)
            }
        }
    }
}

#Preview {
    ContentView(weatherData: WeatherInfo.weatherData)
}
