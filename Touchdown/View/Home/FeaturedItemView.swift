//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Yumin Gui on 8/6/21.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // property
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
       }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
