//
//  CardView.swift
//  Hike
//
//  Created by Andrei Kamarou on 4.08.23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
      //MARK: - CARD
      
      ZStack {
        CustomBackgroundView()
        
        VStack {
          // MARK: - HEADER
          
          VStack(alignment: .leading) {
            HStack {
              Text("Hiking")
                .fontWeight(.black)
                .font(.system(size: 52))
                .foregroundStyle(
                  LinearGradient(colors: [.customGreyLight, .customGreyMedium], startPoint: .top, endPoint: .bottom)
                )
              
              Spacer()
              
              Button {
                // ACTION: Show a Sheet
                print("The button was pressed")
              } label: {
                CustomButtonView()
              }
            }
            
            Text("Fun and enjoyable outdoor activity for friends and families.")
              .multilineTextAlignment(.leading)
              .italic()
              .foregroundColor(.customGreyMedium)
            
          } //: HEADER
          .padding(.horizontal, 30)
          
          // MARK: MAIN CONTENT
          ZStack {
            Circle()
              .fill(
                LinearGradient(colors:
                  [
                  Color("ColorIndigoMedium"),
                  Color("ColorSalmonLight")],
                 startPoint: .topLeading,
                 endPoint: .bottomTrailing
                )
              )
              .frame(width: 256, height: 256)
            
            Image("image-1")
            .resizable()
            .scaledToFit()
          }
          
          // MARK: - FOOTER
        } //: VSTACK
      } //: CARD
      .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
