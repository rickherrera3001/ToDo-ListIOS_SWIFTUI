//
//  ProfileView.swift
//  ToDoList
//
//  Created by Ricardo Developer on 07/11/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.blue)
                .frame(width: 120, height: 125)
                .padding()
            
            //Info: Name, Email, Member since
            VStack(alignment: .leading) {
                
                HStack {
                    Text("Name: ")
                        .bold()
                    Text(user.name)
                }
                HStack {
                    Text(user.email)
                        .bold()
                    Text("Email")
                        .bold()
                    Text("rihr.3001@gmail.com")
                    
                    
                    
                }
                HStack {
                    Text("Member Since: ")
                        .bold()
                    Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                }
                .padding()
            }
            .padding()
            
            //Sing out
            Button("Log Out") {
                viewModel.logOut()
            }
            .tint(.red)
            .padding()
            
            Spacer()
    }
}

#Preview {
    ProfileView()
}
