//
//  ContentView.swift
//  calculator
//
//  Created by Shahad on 10/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade=""
    @State var G = "null"
    var body: some View {
        ZStack{
            Color.blue
                .opacity(0.5)
        
        VStack{
            Spacer()
            Text("حاسبة الدرجات").foregroundColor(.white).font(.largeTitle)
                
            .padding()
            
            Image("calculator").resizable().frame(width: 200, height: 200)
                .padding()
            TextField("ادخل درجتك",text: $grade).background(.white).multilineTextAlignment(.center).frame(width: 300, height: 100)
            ZStack{
                
                Image(systemName: "app.fill").resizable().frame(width: 130, height: 50).foregroundColor(.yellow)
                
           
                
                Text("احسب درجتي")
                    .onTapGesture {
                        if( (Int(grade) ?? 0) >= 90 ){
                            G = "ممتاز"
                        }
                        else if ((Int(grade) ?? 0) >= 80 ) {
                            G = "جيد جدا"
                        }
                        else if ((Int(grade) ?? 0) >= 70 ){
                            G = "جيد"
                            
                        }
                        else if ((Int(grade) ?? 0) >= 60 ){
                            G = "مقبول"
                            
                        }
                        else{
                            G = "راسب"
                        }
                        }
                            
                    }
            Text("لقد حصلت على درجة")
            Image(G)
                .resizable().frame(width: 200, height: 200 )
            Spacer()
            }
            
            
            
            
        }
        .ignoresSafeArea()
    
        }
       
    }
        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
