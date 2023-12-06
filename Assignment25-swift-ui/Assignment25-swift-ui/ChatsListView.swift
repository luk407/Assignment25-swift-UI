//
//  ChatsListView.swift
//  Assignment25-swift-UI
//
//  Created by Luka Gazdeliani on 06.12.23.
//

import SwiftUI

struct Contact: Identifiable {
    var id = UUID()
    let image: UIImage
    let name: String
    let message: String
    let time: String
}

struct ChatsListView: View {
    
    @State var contacts = [
        Contact(image: .avatar1, name: "Francisco Miles", message: "I went there yesterday", time: "18:14"),
        Contact(image: .avatar2, name: "Arlene Fisher", message: "IDK what else is there to do", time: "22:31"),
        Contact(image: .avatar3, name: "Darlene Hawkins", message: "No, I can't come tomorrow.", time: "9:18"),
        Contact(image: .avatar4, name: "Eduardo McKinney", message: "Go to hell", time: "Yesterday"),
        Contact(image: .avatar5, name: "Aubrey Cooper", message: "I hope it goes well.", time: "Friday"),
        Contact(image: .avatar6, name: "Jorge Nguyen", message: "So, what's your plan this weekend?", time: "Thursday"),
        Contact(image: .avatar7, name: "Cody Cooper", message: "What's the progress on that task?", time: "Tuesday"),
        Contact(image: .avatar8, name: "Kristin Pena", message: "Yeah! You're right.", time: "7/22/20"),
        Contact(image: .avatar9, name: "Brandie Watson", message: "I went there yesterday", time: "8/19/20"),
        Contact(image: .avatar10, name: "Stella Henry", message: "Martinique", time: "9/15/20")
    ]
    
    @State private var buttonLabel = "Clear Chat"
    
    @State private var isTapped: Bool = false
    
    var body: some View {
        
        //MARK: Background
        Color(uiColor: UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1))
            .ignoresSafeArea()
            .overlay(
                VStack(spacing: 34, content: {
                    
                    //MARK: Top Bar
                    Text("Chat")
                        .bold()
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                    
                    //MARK: TableView
                    ScrollView(.vertical) {
                        
                        VStack {
                            if !isTapped { // for button functionality
                                
                                ForEach(contacts) { contact in
                                    HStack(spacing: 10, content: {
                                        
                                        Image(uiImage: contact.image)
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                            .clipShape(.circle)
                                        
                                        VStack(spacing: 4, content: {
                                            
                                            HStack(spacing: 12, content: {
                                                
                                                Text(contact.name)
                                                    .foregroundColor(.white)
                                                
                                                Spacer()
                                                
                                                Text(contact.time)
                                                    .foregroundColor(Color(UIColor(red: 184/255, green: 184/255, blue: 184/255, alpha: 1)))
                                            })
                                            
                                            HStack {
                                                
                                                Text(contact.message)
                                                    .foregroundColor(Color(UIColor(red: 184/255, green: 184/255, blue: 184/255, alpha: 1)))
                                                
                                                Spacer()
                                            }
                                        })
                                    })
                                    
                                    Divider()
                                        .background(.gray)
                                }
                                .padding(.leading, 16)
                                .padding(.trailing, 16)
                            } else {
                                Text("ყველა მიმოწერა წაიშალა")
                                    .bold()
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                            }
                        }
                    }
                    
                    //MARK: Button
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color(UIColor(red: 36/255, green: 39/255, blue: 96/255, alpha: 1)))
                            .frame(width: 221, height: 45)
                            .cornerRadius(6)
                        
                        Button(buttonLabel) {
                            if !isTapped {
                                buttonLabel = "Restore Chat"
                                isTapped = true
                            } else {
                                buttonLabel = "Clear Chat"
                                isTapped = false
                            }
                        }
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 20))
                    }
                })
                .padding()
            )
    }
    
}

#Preview {
    ChatsListView()
}
