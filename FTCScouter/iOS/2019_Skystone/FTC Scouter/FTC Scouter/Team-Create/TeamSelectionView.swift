//
//  TeamSelectionView.swift
//  FTC Scouter
//
//  Created by Vishesh Goyal on 6/12/20.
//  Copyright © 2020 Vishesh Goyal. All rights reserved.
//

import SwiftUI

struct TeamSelectionView: View {
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        ZStack {
            Color(red: 7/255, green: 33/255, blue: 82/255)
                .edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .center) {
                
                
                
                Spacer()
                    
                
                
                
                Button (action: {
                    self.viewRouter.currentPage = "JoinTeamView"
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 60)
                            .foregroundColor(Color(red: 219/255, green: 108/255, blue: 5/255))
                            .frame(width: 300, height: 60)
                        
                        
                        Text("JOIN A TEAM")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            
                    }
                }.padding(.all, 10)
                
                Button (action: {
                    self.viewRouter.currentPage = "CreateTeamView"
                }) {
                    ZStack {
                    
                       RoundedRectangle(cornerRadius: 60)
                            .foregroundColor(Color(red: 219/255, green: 108/255, blue: 5/255))
                            .frame(width: 300, height: 60)
                        
                        
                        Text("CREATE A TEAM")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                        
                    }
                }.padding(.all, 10)
                
                Spacer()
                
            }
        }
        
        
    }
}

struct TeamSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TeamSelectionView(viewRouter: ViewRouter())
    }
}
