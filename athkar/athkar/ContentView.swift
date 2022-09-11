//
//  ContentView.swift
//  athkar
//
//  Created by Shahad on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    //@State var text = " "
    @State var num = 0
    @State var number = 0
    @State var number1 = 1
    @State var number2 = 2
    @State var number3 = 3
    @State var numberA = 0
    @State var numberB = 0
    var body: some View {
        VStack{
            HStack{
                Text("استغفر الله العظيم")
                ExtractedView(num: $number)
                
            }
            HStack{
                Text("سبحان الله وبحمده")
                ExtractedView(num: $numberA)
            }
            HStack{
                Text("سبحان الله العظيم")
               ExtractedView(num: $numberB)
            }
            
        }
    }
}



struct ExtractedView: View {
    @Binding var num: Int
    @State var number1 = 1
    @State var number2 = 2
    @State var number3 = 3
    
    var body: some View {
        ZStack{
            Circle().frame(width: 100, height: 100).foregroundColor(.green)
            Text("\(num)").font(.largeTitle)
                .onTapGesture {
                    num+=1
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
