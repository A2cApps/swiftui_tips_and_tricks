//
//  WeatherRow.swift
//  DynamicList
//
//  Created by Tien Le P. on 7/30/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct WeatherRow : View {
    
    var weather: Weather
    
    var body: some View {
        HStack {
            Image(weather.getStatusInfo())
                .resizable()
                .frame(width: 60.0, height: 60.0)
                .aspectRatio(contentMode: .fill)
                .padding(.all)
            VStack(alignment: .leading) {
                Text(weather.city)
                    .font(.title)
                Text(weather.country)
                    .fontWeight(.thin)
            }
            Spacer()
            Text("\(weather.temperature)°C")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.all)
        }
    }
}

#if DEBUG
struct WeatherRow_Previews : PreviewProvider {
    static var previews: some View {
        WeatherRow(weather: Weather(id: 0, city: "Hà Nội", country: "Việt Nam", temperature: 35, status: .rain))
    }
}
#endif

