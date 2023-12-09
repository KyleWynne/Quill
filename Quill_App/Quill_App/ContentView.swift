//
//  ContentView.swift
//  Quill_App
//
//  Created by Kyle Wynne on 12/3/23.
//
/// **Sources Used**
///https://stackoverflow.com/questions/70803189/easiest-way-to-play-a-video-from-youtube-in-my-app-with-swiftui
///https://www.hackingwithswift.com/forums/swiftui/is-there-a-way-to-style-the-navigation-link/13906
///https://stackoverflow.com/questions/71063011/swiftui-navigationview-size-to-fit-content
///https://developer.apple.com/documentation/webkit/wkwebview


import SwiftUI

struct ContentView: View {
    @State var showLoginView = false
    //home page view with an intuitive menu
    var body: some View {
        //naviagtion view that will bring us to our 3 other view
        NavigationView {
            VStack {
                //title of the app
                Text("Quill")
                    .font(.system(size: 80))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                //subtext to allow users to understand the name
                Text("Find Your Tranquility")
                    .font(.title2)
                //logo image
                Image("Quill")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .padding(.trailing)
                //create the button that takes users to the Study View
                NavigationLink(destination: StudyView()) {
                    Text("Study")
                        .padding()
                        //makes the navigation link look like the bordered prominent button style
                        .background(.black)
                        .foregroundColor(.white)
                        //changes button size
                        .font(.system(size: 25))
                        .cornerRadius(10)
                }
                //button to send users to the meditation view
                NavigationLink(destination: MeditationView()) {
                    Text("Meditate")
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .cornerRadius(10)
                }
                //button to send users to the christmas view
                NavigationLink(destination: NatureView()) {
                    Text("Nature Sounds")
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .cornerRadius(10)
                }
        }
    }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
