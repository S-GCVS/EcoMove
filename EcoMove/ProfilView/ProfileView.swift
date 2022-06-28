//
//  ProileView.swift
//  EcoMove
//
//  Created by aprennant 18 on 17/06/2022.
//

import SwiftUI
import Foundation
//imoport de StrucuPoint

struct ProfileView: View {
    @State var vuProfil: Bool = true
    @State var vuMaConso: Bool = false
    @State var colorM = ""
    var body: some View{
        VStack{
            
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("LightGreen"))
                    .frame(width: 350, height: 200, alignment: .center)
                    .rotationEffect(.degrees(2))
                    .shadow(color: Color("DarkGreen"), radius: 2, x: 4, y: 3)
                    .padding()
                HStack{
                    Image("Chris")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    
                    VStack{
                        Text("Chris REDFIELD")

                            .font(.title2)
                            .foregroundColor(Color("DarkGreen"))
                        
                            .fontWeight(.bold)
                            .padding()
                        Text("8000 W")
                            .font(.title2)
                            .foregroundColor(Color("DarkGreen"))

                    }
                }
                .frame(width:300)
            }
            HStack{
                Button{
                    vuProfil = true
                    vuMaConso = false
                }label: {
                    HStack{
                        ZStack{
                            Rectangle()
                                .fill(vuProfil == true ? Color("LightGreen"): Color("Grayperso"))
                                .frame(width: 180.0, height: 40.0)
                                .cornerRadius(8)
                            Text("PROFIL")
                                .font(.system(size:18,weight: .bold))
                                .foregroundColor(.white)
                                .padding(10)
                        }
                }
                }
                    HStack{
                Button{
                    vuMaConso = true
                    vuProfil = false
                }label:{
                    ZStack{
                        Rectangle()
                            .fill(vuMaConso == true ? Color("LightGreen"): Color("Grayperso")) 
                            .frame(width: 180, height: 40.0)
                            .cornerRadius(8)
                        Text("MA CONSO CO2")
                            .foregroundColor(.white)
                            .font(.system(size:18,weight: .bold))
                    }
                }
                }
            }
            
            if vuProfil == true{
            TransportFavorisView()
                    
            }
            if vuMaConso == true {
                MaconsoView(consoJV: 0.3)
                    
            }
            Spacer()
        }
        
    }
}
    

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
