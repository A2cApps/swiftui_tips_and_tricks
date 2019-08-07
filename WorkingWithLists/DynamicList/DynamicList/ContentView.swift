//
//  ContentView.swift
//  DynamicList
//
//  Created by Tien Le P. on 7/30/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let weathers: [Weather] = Weather.dummyDatas()
    
    var body: some View {
        List(weathers.identified(by: \.city)) { item in
            WeatherRow(weather: item)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
