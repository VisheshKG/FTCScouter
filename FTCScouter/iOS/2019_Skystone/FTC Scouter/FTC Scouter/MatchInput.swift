//
//  MatchInput.swift
//  FTC Scouter
//
//  Created by Vishesh Goyal on 6/2/20.
//  Copyright © 2020 Vishesh Goyal. All rights reserved.
//

import SwiftUI

struct MatchInput: View {
    
    
    // Auto Information
    @State var Skystone1 = false
    @State var Skystone2 = false
    @State var Across = 0
    @State var Placed = 0
    @State var Parked = false
    @State var Foundation = false
    
    // Driver Control Info
    @State var DAcross = 0
    @State var DPlaced = 0
    @State var DLevel = 0
    @State var DCap1 = 0
    @State var DCap2 = 0
    @State var DFoundation = false
    @State var DParked = false
    
    
    
    var body: some View {
        /*
        if let localData = self.readLocalFile(forName: "MatchData") {
            return AnyView(self.parseJSON(data: localData))
        } else {
            return AnyView(VStack{
                Text("No Data Found While Reading")
            })
        }
 */
        
        VStack (alignment: .center) {
            
            

            
            Text("Autonomous")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top, 15)
            
            
            VStack(alignment: .center) {
                
                HStack {
                    Text("Skystones Across")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button(action: {
                        self.Skystone1.toggle()
                    }) {
                        if (Skystone1) {
                            ButtonView(text: "1", backgroundColor: Color.black, textColor: Color.orange, width: 30, height: 30)
                        }
                        else {
                            ButtonView(text: "1", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                        }
                    }.padding(.horizontal, 10)
                    
                    
                    Button(action: {
                        self.Skystone2.toggle()
                    }) {
                        if (Skystone2) {
                            ButtonView(text: "2", backgroundColor: Color.black, textColor: Color.orange, width: 30, height: 30)
                        }
                        else {
                            ButtonView(text: "2", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                        }
                    }.padding(.horizontal, 10)
                
                }
                
                
                
                
                HStack {
                    Text("Stones Across")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button(action: {
                        self.Across = self.Across - 1
                    }) {
                        ButtonView(text: "<", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                    
                    Text(String(Across))
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Button(action: {
                        self.Across = self.Across + 1
                    }) {
                        ButtonView(text: ">", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                }
                
                
                
                
                
                HStack {
                    Text("Stones Placed")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button(action: {
                        self.Placed = self.Placed - 1
                    }) {
                        ButtonView(text: "<", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                    
                    Text(String(Placed))
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Button(action: {
                        self.Placed = self.Placed + 1
                    }) {
                        ButtonView(text: ">", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                }
                
            
                
                
                
                HStack {
                    Text("Foundation")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button(action: {
                        self.Foundation.toggle()
                    }) {
                        if self.Foundation {
                            ButtonView(text: "✓", backgroundColor: Color.black, textColor: Color.orange, width: 30, height: 30)
                        }
                        else {
                            ButtonView(text: "✓", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                        }
                    }.padding(.horizontal, 10)
                    
                }
            }
            
            
            
            
            HStack {
               Text("Parked")
               .font(.system(size: 25))
               .fontWeight(.semibold)
               .foregroundColor(Color.white)
               
               Spacer()
               
               Button(action: {
                   self.Parked.toggle()
               }) {
                   if self.Parked {
                       ButtonView(text: "✓", backgroundColor: Color.black, textColor: Color.orange, width: 30, height: 30)
                   }
                   else {
                       ButtonView(text: "✓", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                   }
               }.padding(.horizontal, 10)
            }
            
            
            Text("Driver Control")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(.top, 15)
            
            
            
            VStack(alignment: .center) {
            
                HStack {
                    Text("Stones Across")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button(action: {
                        self.DAcross = self.DAcross - 1
                    }) {
                        ButtonView(text: "<", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                    
                    Text(String(DAcross))
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Button(action: {
                        self.DAcross = self.DAcross + 1
                    }) {
                        ButtonView(text: ">", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                }
                
                
                
                HStack {
                    Text("Stones Placed")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button(action: {
                        self.DPlaced = self.DPlaced - 1
                    }) {
                        ButtonView(text: "<", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                    
                    Text(String(DPlaced))
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Button(action: {
                        self.DPlaced = self.DPlaced + 1
                    }) {
                        ButtonView(text: ">", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                }
                
                
                
                
                HStack {
                    Text("Skyscraper Level")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button(action: {
                        self.DLevel = self.DLevel - 1
                    }) {
                        ButtonView(text: "<", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                    
                    Text(String(DLevel))
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    
                    Button(action: {
                        self.DLevel = self.DLevel + 1
                    }) {
                        ButtonView(text: ">", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                    }.padding(.horizontal, 10)
                }
            }
            
            
            
            
            HStack {
                Text("Capstone 1 Level")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                Spacer()
                
                Button(action: {
                    self.DCap1 = self.DCap1 - 1
                }) {
                    ButtonView(text: "<", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                }.padding(.horizontal, 10)
                
                Text(String(DCap1))
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                Button(action: {
                    self.DCap1 = self.DCap1 + 1
                }) {
                    ButtonView(text: ">", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                }.padding(.horizontal, 10)
            }
            
            
            
            
            HStack {
                Text("Capstone 2 Level")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                Spacer()
                
                Button(action: {
                    self.DCap2 = self.DCap2 - 1
                }) {
                    ButtonView(text: "<", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                }.padding(.horizontal, 10)
                
                Text(String(DCap2))
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                
                Button(action: {
                    self.DCap2 = self.DCap2 + 1
                }) {
                    ButtonView(text: ">", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                }.padding(.horizontal, 10)
            }
            
            
            HStack {
               Text("Foundation")
               .font(.system(size: 25))
               .fontWeight(.semibold)
               .foregroundColor(Color.white)
               
               Spacer()
               
               Button(action: {
                   self.DFoundation.toggle()
               }) {
                   if self.DFoundation {
                       ButtonView(text: "✓", backgroundColor: Color.black, textColor: Color.orange, width: 30, height: 30)
                   }
                   else {
                       ButtonView(text: "✓", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                   }
               }.padding(.horizontal, 10)
            }
            
            
            
            
            HStack {
               Text("Parked")
               .font(.system(size: 25))
               .fontWeight(.semibold)
               .foregroundColor(Color.white)
               
               Spacer()
               
               Button(action: {
                   self.DParked.toggle()
               }) {
                   if self.DParked {
                       ButtonView(text: "✓", backgroundColor: Color.black, textColor: Color.orange, width: 30, height: 30)
                   }
                   else {
                       ButtonView(text: "✓", backgroundColor: Color.orange, textColor: Color.black, width: 30, height: 30)
                   }
               }.padding(.horizontal, 10)
            }
            
            Spacer()
            
        }.padding()
            .frame(maxWidth:.infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(red: 32/255, green: 32/255, blue: 32/255))
            .edgesIgnoringSafeArea(.all)
 
 
    }
    
    
    
    func parseJSON(data: Data) -> some View {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(MatchData.self, from: data)
            return AnyView(VStack {
                Text(decodedData.name)
                Text(decodedData.data)
            })
        } catch {
            print(error)
            return AnyView(VStack{
                Text("No Data Found While Parsing")
            })
        }
    }


    func readLocalFile(forName name: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print(error)
        }
        
        return nil
    }
    
    
}




struct ButtonView: View {
    
    let text: String
    let backgroundColor: Color
    let textColor: Color
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5, style: .continuous)
                .fill(backgroundColor)
                .frame(width: width, height: height)
            Text(text)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(textColor)
        }
    }
}




struct MatchInput_Previews: PreviewProvider {
    static var previews: some View {
        MatchInput().previewDevice(PreviewDevice(rawValue: "iPhone XR"))
       
    }
}


