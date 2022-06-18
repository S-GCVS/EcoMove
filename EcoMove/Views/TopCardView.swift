//
//  TopCardView.swift
//  EcoMove
//
//  Created by Tristan Aly on 18/06/2022.
//

import SwiftUI

struct TopCardView: View {
    var body: some View {
        VStack(spacing: 2){
            HStack{
                Text("@Chris_REDFIELD")
                Spacer()
            
            Image("ecomove")
                .resizable()
                .frame(width: 50, height: 50,alignment: .center)
                .clipShape(Circle())
                .shadow(color: Color("DarkGreen"), radius: 5, x: 3, y: 2.5)
            }.padding()
                .rotationEffect(.degrees(2))
            Text("8000 \(Image(systemName: "millsign.square.fill"))")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            HStack{
            Text("4.555 € ")
                        .font(.title3)
                Spacer()
                NavigationLink {
                    HistoryView()
                } label: {
                Text("Voir l'historique")
                    .font(.callout)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(Color("DarkGreen"))
                        .frame(width: 120, height: 25, alignment: .center))}
            }.padding()
        }.padding()
            .background( RoundedRectangle(cornerRadius: 8)
                .fill(Color("LightGreen"))
                .frame(width: 350, height: 200, alignment: .center)
                .rotationEffect(.degrees(2))
                .shadow(color: Color("DarkGreen"), radius: 2, x: 4, y: 3))
    }
}

struct TopCardView_Previews: PreviewProvider {
    static var previews: some View {
        TopCardView()
    }
}
