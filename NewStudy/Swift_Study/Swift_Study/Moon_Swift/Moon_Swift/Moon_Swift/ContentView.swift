//
//  ContentView.swift
//  Moon_Swift
//
//  Created by ByungMoon Kim on 7/1/24.
//

//import CoreLocation
// CoreLocation: 현재위치등을 표현하고 싶다면 권한필요
// 중심, 범위 지정, 핀(어노테이션)
//https://developer.apple.com/tutorials/develop-in-swift/hello-swiftui
// 애플 공식 스위프트 튜토리얼

// HStack : 수평(가로)
// VStack : 수직(세로)
// String : 문자열

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            DayForecast(day: "Mon", isRainy: false, High: 70, Low: 50)
            
            DayForecast(day: "Tue", isRainy: true, High: 50, Low: 20)
            
            /*
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
             Text("Hello, swift!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 16))
             .padding() 은 위아래 띄어쓰기 이런걸 수정자 라고 불린다
            Text("It's Your Festival")
                .padding()
                .background(Color.orange, in: RoundedRectangle(cornerRadius: 16))
             Text("Color").font(.system(size:50))
                .padding()
                .background(Color.blue, in: RoundedRectangle(cornerRadius: 16))
            
            
             버튼 생성 방법
            Button("Button"){
                print("Festival")
            } */
        }
    }
}
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DayForecast: View {
    let day: String
    // day의 속성은 String
    let isRainy: Bool
    // let isSunny: Bool
    let High: Int
    let Low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }

    var body: some View {
        VStack {
            Text(day)
            font(.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            // 문자열을 기대하는 텍스트에서 위 숫자의 값을 표기하려면 아래와 같이 문자열로 변경해야된다.
            Text("\(High)")
            Text("\(Low)")
        }
        .padding()
    }
}

/*
struct DayForecast_2: View {
    
    var body: some View {
        VStack {
            Text("Tue")
            Image(systemName: "cloud.rain.fill")
                .foregroundStyle(Color.blue)
            Text("High: 50")
            Text("Low: 20")
        }
        .padding()
    }
}
*/
