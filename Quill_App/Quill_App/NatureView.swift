//
//  ChirstmasView.swift
//  Quill_App
//
//  Created by Kyle Wynne on 12/7/23.
//

import Foundation
import SwiftUI
//this kit was needed to have the audio play correctly
import AVKit

struct NatureView: View {
    //youtube video ID
    var ID = "9pOSH5JkYJA";
    
    var body: some View {
        VStack{
            //now playing so that users are not confused
            Text("Now Playing Nature Sounds")
            //youtube video displayed through video view
            YoutubeVideoView(youtubeVideoID: ID)
        }
    }
}

struct NatureView_Previews: PreviewProvider {
    static var previews: some View {
        NatureView()
    }
}
