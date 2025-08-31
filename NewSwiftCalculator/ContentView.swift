//
//  ContentView.swift
//  
//
//  Created by Satya Palakodeti on 12/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var themeManager: ThemeManager
    
    @State private var navigateToDetail = true
    var body: some View {
      
        
        NavigationStack{
            VStack{
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Welcome to the Swift UI Calculator")
                    .padding(.bottom,20)
                
                
                NavigationLink(destination: BasicCalcView()){
                    
                    Text("Basic Calculator")
                        .padding(.bottom,20)
                }
                NavigationLink("Scientific Calculator", destination: ScifiCalcView())
                    .padding(.bottom, 20)
                    .buttonStyle(.bordered)
            }.background(backgroundView)
                .ignoresSafeArea()
        
                
            Text("Select Your Theme !!")
                .padding(.top,80)
            
            HStack(spacing: 10) {
                            Button("Default") {
                               
                                themeManager.showGradient = true
                            }
                            .padding(10)
                            .background(Color.yellow)
                            .foregroundColor(.black)

                            Button("Green") {
                                themeManager.updateColor(to: .green)
                            }
                            .padding(10)
                            .background(Color.yellow)
                            .foregroundColor(.black)

                            Button("Gray") {
                                themeManager.updateColor(to: .gray)
                            }
                            .padding(10)
                            .background(Color.yellow)
                            .foregroundColor(.black)

                            Button("Cyan") {
                                themeManager.updateColor(to: .cyan)
                            }
                            .padding(10)
                            .background(Color.yellow)
                            .foregroundColor(.black)
            }
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundView)
            //.background(themeManager.bgColor)
            .navigationTitle("Main View")
    }
    var backgroundView: some View {
        Group {
                if themeManager.showGradient {
                    LinearGradient(
                        gradient: Gradient(colors: [.orange, .cyan,.accentColor]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                } else {
                    themeManager.bgColor   // solid color for selected theme
                }
            }
            .ignoresSafeArea()
        }
    }


#Preview {
    ContentView()
        .environmentObject(ThemeManager())
    
}
