//
//  AboutView.swift
//  Bullseye
//
//  Created by JSworkstation on 2020/07/08.
//  Copyright © 2020 JSworkstation. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    let beige = Color(red: 255.0 / 255.0, green: 214.0 / 255.0, blue: 179.0 / 255.0)
    
    struct AboutHeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.vertical, 20)
        }
    }
    
    struct AboutBodyStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .foregroundColor(Color.black)
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding(.horizontal, 60)
                .padding(.bottom, 20)
        }
    }
    
    var body: some View {
        Group {
            VStack {
                Text("🎯 Bullseye 🎯").modifier(AboutHeadingStyle())
                
                Group {
                    Text("This is Bullseye, this game where you can win points and eran fame by dragging a slider.").lineLimit(nil)
                    Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.").lineLimit(nil)
                    Text("Enjoy!")
                }
                .modifier(AboutBodyStyle())
            }
            .background(beige)
        }
        .background(Image("Background"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
