//
//  ContentView.swift
//  Assignment25-swift-UI
//
//  Created by Luka Gazdeliani on 06.12.23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var nameDefaultText: String = "test"
    @State var emailDefaultText: String = "test@gmail.com"
    @State var passwordDefaultText: String = "********"
    @State var dateOfBirthDefaultText: String = "31/02/2000"
    @State var countryRegionDefaultText: String = "Georgia"
    
    var body: some View {
        
        VStack(spacing: 18, content:  {
            
            //MARK: Top Bar
            ZStack{
                HStack {
                    Image(systemName: "chevron.backward")
                        .bold()
                        .imageScale(.large)
                    Spacer()
                }
                Text("Edit Profile")
                    .bold()
                    .font(.system(size: 20))
            }
            
            //MARK: Profile Picture
            ZStack {
                
                Circle()
                    .stroke(lineWidth: 1)
                    .frame(width: 175, height: 175)
                
                Image(.profilePic)
                    .resizable()
                    .frame(width: 170, height: 170)
                    .clipShape(Circle())
                
                Image(.vector)
                    .offset(x: 60, y: 70)                
            }
            
            //MARK: Name Stack
            VStack(spacing: 11, content: {
                HStack {
                    Text("Name")
                        .bold()
                        .font(.system(size: 16))
                    Spacer()
                }
                HStack {
                    TextField("NameText", text: $nameDefaultText)
                        .textFieldStyle(.roundedBorder)
                }
            })
            
            //MARK: Email Stack
            VStack(spacing: 11, content: {
                HStack {
                    Text("Email")
                        .bold()
                        .font(.system(size: 16))
                    Spacer()
                }
                HStack {
                    TextField("EmailText", text: $emailDefaultText)
                        .textFieldStyle(.roundedBorder)
                }
            })

            //MARK: Password Stack
            VStack(spacing: 11, content: {
                HStack {
                    Text("Password")
                        .bold()
                        .font(.system(size: 16))
                    Spacer()
                }
                HStack {
                    TextField("PasswordText", text: $passwordDefaultText)
                        .textFieldStyle(.roundedBorder)
                }
            })
            
            //MARK: Date of Birth Stack
            VStack(spacing: 11, content: {
                HStack {
                    Text("Date of Birth")
                        .bold()
                        .font(.system(size: 16))
                    Spacer()
                }
                HStack {
                    TextField("DateOfBirthText", text: $dateOfBirthDefaultText)
                        .textFieldStyle(.roundedBorder)
                }
            })
            
            //MARK: Country/Region Stack
            VStack(spacing: 11, content: {
                HStack {
                    Text("Country/Region")
                        .bold()
                        .font(.system(size: 16))
                    Spacer()
                }
                HStack {
                    TextField("CountryRegionText", text: $countryRegionDefaultText)
                        .textFieldStyle(.roundedBorder)
                }
            })
            
            //MARK: Button
            ZStack {
                Rectangle()
                    .frame(width: 221, height: 45)
                    .foregroundColor(Color(UIColor(red: 36/255, green: 39/255, blue: 96/255, alpha: 1)))
                    .cornerRadius(6)
                Text("Save Changes")
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 20))
            }
        })
        .padding()
    }
}

#Preview {
    ProfileView()
}
