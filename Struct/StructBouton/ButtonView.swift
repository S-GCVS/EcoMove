//
//  ButtonView.swift
//  EcoMove
//
//  Created by Apprenant12 on 27/06/2022.
//

import SwiftUI

struct ButtonView: View {
    @State var colorButton: [Bouton]
    var body: some View {
        HStack{
            Text("Icones")
                .foregroundColor(Color("LightGreen"))
            ForEach(0..<colorButton.count, id: \.self){ index in
                Button{
                    if colorButton[index].colors == "gray" {
                        colorButton[index].colors = "LightGreen"
                    }
                    else {
                        colorButton[index].colors = "gray"
                    }
                }label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 16)
                            .frame(width: 50, height: 50)
                            .foregroundColor(Color(colorButton[index].colors))
                        Image(systemName: colorButton[index].iconne)
                            .foregroundColor(.white)
                    }//Z
                    }
                }
            }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(colorButton: [Bouton(colors: "DarkGreen", iconne: "house")])
    }
}
