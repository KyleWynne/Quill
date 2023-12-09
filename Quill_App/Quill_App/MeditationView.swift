//
//  MeditationView.swift
//  Quill_App
//
//  Created by Kyle Wynne on 12/6/23.
//

import Foundation
import SwiftUI
//this kit was needed to have the audio play correctly
import AVKit

struct MeditationView: View {
    //youtube video ID
    var ID = "WZKW2Hq2fks";

    var body: some View {
        VStack{
            //show now playing to reduce confusion
            Text("Now Playing Meditation Music")
            //call the video view with the video ID
            YoutubeVideoView(youtubeVideoID: ID)
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
