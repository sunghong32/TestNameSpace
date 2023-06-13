//
//  ContentView.swift
//  TestNameSpace
//
//  Created by 민성홍 on 2023/06/12.
//

import SwiftUI

struct ContentView: View {
    @Namespace private var animation
    @State private var isExpanded = false

    var body: some View {
        VStack(spacing: 40) {
            Button(action: {
                withAnimation() {
                    isExpanded.toggle()
                }
            }) {
                HStack {
                    if isExpanded {
                        Image(systemName: "plus.circle.fill")
                            .matchedGeometryEffect(id: "icon", in: animation)
                            .foregroundColor(.green)
                        Text("추가")
                            .font(.headline)
                            .matchedGeometryEffect(id: "label", in: animation)
                            .foregroundColor(.black)
                    } else {
                        Text("추가")
                            .font(.headline)
                            .matchedGeometryEffect(id: "label", in: animation)
                            .foregroundColor(.black)
                    }
                }
                .frame(width: 140, height: 60)
                .border(Color.black, width: 1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
