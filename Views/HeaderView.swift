//
//  HeaderView.swift
//  ToDoList
//
//  Created by Apple on 26/12/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                    
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 70)
                
        }
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, backgroundColor: .blue)
    }
}
