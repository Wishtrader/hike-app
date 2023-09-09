//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Andrei Kamarou on 24.08.23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .padding(.vertical)
      .padding(.horizontal, 30)
      .background(
        configuration.isPressed
        ?
        LinearGradient(colors: [
        .customGreyMedium,
        .customGreyLight
      ], startPoint: .top, endPoint: .bottom)
        :
        LinearGradient(colors: [
        .customGreyLight,
        .customGreyMedium
      ], startPoint: .top, endPoint: .bottom))
          .cornerRadius(40)
      }
}
