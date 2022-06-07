//
//  ContentView.swift
//  TimelineViewExample
//
//  Created by 강대민 on 2022/06/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //context인수를 사용한다.
            //TimelineView(.animation) { context in
            //3초마다로 변경하고싶다? 현재시간을 기준으로 3초마다
            TimelineView(.periodic(from: .now, by: 3)) { context in

                let date = context.date
                let seconds = Calendar.current.component(.second, from: date)
                
                Circle()
                    .trim(from: 0, to: Double(seconds) / 60.0 )
                    .stroke(Color.blue, lineWidth: 10)
                Text("\(seconds)\nSeconds")
            }
        }.padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
