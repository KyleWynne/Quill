//
//  StudyView.swift
//  Quill_App
//
//  Created by Kyle Wynne on 12/6/23.
//

import Foundation
import SwiftUI
//this kit was needed to have the audio play correctly
import AVKit

struct StudyView: View {
    //video Id given by youtube
    var ID = "jfKfPfyJRdk";
    
    //create the view
    var body: some View {
        VStack{
            //now playing to lessen any confusion
            Text("Now Playing Lofi Girl Study Beats")
            //call the video view to embed the video
            YoutubeVideoView(youtubeVideoID: ID)
        }
    }
}

struct StudyView_Previews: PreviewProvider {
    static var previews: some View {
        StudyView()
    }
}
