//
//  TeamJoinView.swift
//  FTC Scouter
//
//  Created by Vishesh Goyal on 6/16/20.
//  Copyright © 2020 Vishesh Goyal. All rights reserved.
//

import SwiftUI

struct JoinTeamView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    @State var teamCode = "Team Code"
    @State var teamNumber = "Team Number"
    
    var body: some View {
        ZStack {
            Color(red: 7/255, green: 33/255, blue: 82/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .center) {
                
                
                
                Text("JOIN A TEAM")
                    .foregroundColor(Color(red: 219/255, green: 108/255, blue: 5/255))
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .padding(.top, 200)
                    
                VStack{
                    TextField("Password", text: $teamNumber)
                        .font(.system(size: 20))
                        .frame(width: 250, height: 30)
                        .foregroundColor(Color.white)
                    
                    Rectangle()
                        .frame(width: 250, height: 1)
                        .foregroundColor(Color.white)
                }.padding(.all, 25)

                
                 VStack{
                     TextField("Team Code", text: $teamCode)
                         .font(.system(size: 20))
                         .frame(width: 250, height: 30)
                         .foregroundColor(Color.white)
                     
                     Rectangle()
                         .frame(width: 250, height: 1)
                         .foregroundColor(Color.white)
                 }.padding(.all, 25)
             
             
                
             
             Button (action: {
                 self.viewRouter.currentPage = "HomeView"
             }) {
                 ZStack {
                     RoundedRectangle(cornerRadius: 60)
                         .foregroundColor(Color(red: 219/255, green: 108/255, blue: 5/255))
                     .frame(width: 200, height: 60)
                     
                     
                     Text("Join Team")
                         .foregroundColor(Color.white)
                         .font(.system(size: 30))
                         
                 }
             }.padding(.top, 100)
                
                
                Spacer()
                
            }
        }
    }
}

struct TeamJoinView_Previews: PreviewProvider {
    static var previews: some View {
        JoinTeamView(viewRouter: ViewRouter())
    }
}
