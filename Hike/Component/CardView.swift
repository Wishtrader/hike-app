//
//  CardView.swift
//  Hike
//
//  Created by Andrei Kamarou on 4.08.23.
//

import SwiftUI

struct CardView: View {
  // MARK: - PROPERTIES
  
  @State private var imageNumber: Int = 1
  @State private var randomNumber: Int = 1
  
  // MARK: - FUNCTIONS
  
  func randomImage() {
    print("--- BUTTON WAS PRESSED ---")
    print("Status: Old Image Number = \(imageNumber)")
    
    repeat {
      randomNumber = Int.random(in: 1...5)
      print("Action: Random Number Generated = \(randomNumber)")
    } while randomNumber == imageNumber
    
    imageNumber = randomNumber
    
    print("Result: New Image Number = \(imageNumber)")
    print("--- THE END ---")
  }
  
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
            
            Image("image-\(imageNumber)")
            .resizable()
            .scaledToFit()
            .animation(.default, value: imageNumber)
          }
          
          // MARK: - FOOTER
          
          Button {
            // ACTION: Generate a random number
            randomImage()
          } label: {
            Text("Explore More")
              .font(.title2)
              .fontWeight(.heavy)
              .foregroundStyle(LinearGradient(colors: [
                .customGreenLight,
                  .customGreenMedium
              ], startPoint: .top, endPoint: .bottom))
              .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
          }
          .buttonStyle(GradientButton())
          
          
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
