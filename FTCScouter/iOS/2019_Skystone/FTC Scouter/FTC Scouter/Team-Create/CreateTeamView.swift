//
//  CreateTeamView.swift
//  FTC Scouter
//
//  Created by Vishesh Goyal on 6/16/20.
//  Copyright © 2020 Vishesh Goyal. All rights reserved.
//

import SwiftUI

struct CreateTeamView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    @State var name = "Team Name"
    @State var number = "Team Number"
    @State var city = "City"
    @State var region = "Region"
    
    var body: some View {
           ZStack {
               Color(red: 7/255, green: 33/255, blue: 82/255)
                 .edgesIgnoringSafeArea(.all)
             
               VStack (alignment: .center) {
                 
                 
                 
                 Text("Create an Team")
                   .foregroundColor(Color(red: 219/255, green: 108/255, blue: 5/255))
                   .font(.system(size: 30))
                   .multilineTextAlignment(.center)
                   .padding(.top, 200)
                     
                 
                 
                 
                  VStack{
                       TextField("Team Name", text: $name)
                           .font(.system(size: 20))
                           .frame(width: 250, height: 30)
                           .foregroundColor(Color.white)
                       
                       Rectangle()
                           .frame(width: 250, height: 1)
                           .foregroundColor(Color.white)
                   }.padding(.all, 15)
                  
                   
                   
                   VStack{
                        TextField("Team Number", text: $number)
                            .font(.system(size: 20))
                            .frame(width: 250, height: 30)
                            .foregroundColor(Color.white)
                        
                        Rectangle()
                            .frame(width: 250, height: 1)
                            .foregroundColor(Color.white)
                    }.padding(.all, 15)

              
              
                   VStack{
                       TextField("City", text: $city)
                           .font(.system(size: 20))
                           .frame(width: 250, height: 30)
                           .foregroundColor(Color.white)
                       
                       Rectangle()
                           .frame(width: 250, height: 1)
                           .foregroundColor(Color.white)
                   }.padding(.all, 15)

                   
                   
                   VStack{
                        TextField("Region", text: $region)
                            .font(.system(size: 20))
                            .frame(width: 250, height: 30)
                            .foregroundColor(Color.white)
                        
                        Rectangle()
                            .frame(width: 250, height: 1)
                            .foregroundColor(Color.white)
                    }.padding(.all, 15)

                   Button (action: {
                      
                      self.viewRouter.currentPage = "TeamSelectionView"
                  }) {
                      ZStack {
                      
                          RoundedRectangle(cornerRadius: 60)
                              .foregroundColor(Color(red: 219/255, green: 108/255, blue: 5/255))
                              .frame(width: 200, height: 60)
                          
                          
                          Text("Signup")
                              .foregroundColor(Color.white)
                              .font(.system(size: 30))
                          
                      }
                  }.padding(.all, 10)

                 
                 Spacer()
                 
             }
         }
    }
}

struct CreateTeamView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTeamView(viewRouter: ViewRouter())
    }
}
