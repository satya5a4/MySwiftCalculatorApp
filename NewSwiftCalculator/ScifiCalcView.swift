//
//  ScifiCalcView.swift
//  NewSwiftCalculator
//
//  Created by Satya Palakodeti on 12/17/24.
//

import SwiftUI
import SimpleToast
import Foundation


let backgroundLinear =

LinearGradient (gradient: Gradient(colors: [.orange, .white, .green]), startPoint: .top, endPoint: .bottom)

struct ScifiCalcView: View {
    
    @EnvironmentObject var themeManager: ThemeManager
    
    @State private var showSinToast = false;
    @State private var showCosToast = false;
    @State private var showTanToast = false;
    @State private var showCosecToast = false;
    @State private var showSecToast = false;
    @State private var showCotToast = false;
    @State private var showFactorialToast = false;
    @State private var showSqrToast = false;
    @State private var showCubeToast = false;
    @State private var showAllClearToast = false;
    @State private var hideToast = true;
    @State private var inputValue: String = "";
    @State private var resultValue: String = "";
    @State private var errorMessage: String = "";
    @State private var username: String = "";
    @State private var result: String = "";
    //@State private var degrees: String="30.0";
    @State private var radiantValue: String = "";
    @State private var value = 0
    
    private let toastOptions = SimpleToastOptions(
        alignment: .bottom,
        hideAfter: 1,
        backdropColor: Color.blue.opacity(0.3),
        animation: .default,
        modifierType: .slide
    )
    
    var body: some View {
        
        
        ScrollView{
            Text("Scientific Calculator")
                .foregroundColor(Color.blue)
                .font(.largeTitle)
            
            TextField("Radiant Value ... !!", text: $inputValue)
                .frame(width: 150, height: 35, alignment: .center)
                .background(Color.white)
                .onChange(of: inputValue) { newValue in
                    validateInput(newValue)
                }
            
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .font(.caption)
            }
        
            TextField("Result ... !!", text: $resultValue)
                .frame(width: 150, height: 35, alignment: .center)
                .background(Color.green)
            
            
            
            HStack{
                Button("Sin θ") {
                    
                    if (validateInput(inputValue))
                    {
                        showSinToast.toggle()
                        
                        //Function operation
                        if let num1 = Double(inputValue)
                        {
                            result = String(sin(num1 * .pi / 180))
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                        
                    }
                    else
                    {
                        showSinToast.toggle()
                    }
                    
                }
                .frame(width: 80,height:65)
                .background(themeManager.bgColor)
                .foregroundColor(Color.black)
                .simpleToast(isPresented: $showSinToast, options: toastOptions, onDismiss:{}){
                    Text("Sin θ")
                        .padding(5)
                        .background(Color.orange)
                        .cornerRadius(5)
                }
                
                Button("Cos θ") {
                       
                    if (validateInput(inputValue))
                    {
                        //Function operation
                        showCosToast.toggle()
                        
                        
                        if let num1 = Double(inputValue)
                        {
                            result = String(cos(num1 * .pi / 180))
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                    }
                    else
                    {
                        showCosToast.toggle()
                    }
                    
                }
                .frame(width: 80,height:65)
                .background(themeManager.bgColor)
                .foregroundColor(Color.black)
                .simpleToast(isPresented: $showCosToast, options: toastOptions, onDismiss:{}){
                
                Text("Cos θ")
                    .padding(5)
                    .background(Color.white)
                    .cornerRadius(5)
                }
                Button("Tan θ") {
                
                    if (validateInput(inputValue))
                    {
                        if let num1 = Double(inputValue)
                        {
                            result = String(tan(num1 * .pi / 180))
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                        //Function operation
                        showTanToast.toggle()
                        
                        
                    }
                    else
                    {
                        showTanToast.toggle()
                    }
                      
                }
                .frame(width: 80,height:65)
                .background(themeManager.bgColor)
                .foregroundColor(Color.black)
                .simpleToast(isPresented: $showTanToast, options: toastOptions, onDismiss:{}){
                    
                Text("Tan θ")
                   .padding(5)
                    .background(Color.green)
                    .cornerRadius(5)
                }
            }.padding(5)
            
            HStack{
                Button("C'sec θ") {
                    
                    if (validateInput(inputValue))
                    {
                        //Function operation
                        showCosecToast.toggle()
                        
                        if let num1 = Double(inputValue)
                        {
                            result = String(1/(sin(num1 * .pi / 180)))
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                    }
                    else
                    {
                        showCosecToast.toggle()
                    }
                }
                    .frame(width: 80,height:65)
                    .background(themeManager.bgColor)
                    .foregroundColor(Color.black)
                    .simpleToast(isPresented: $showCosecToast, options: toastOptions, onDismiss:{value+=1}){
            
                    Text("Cosec θ")
                        .padding(5)
                        .background(Color.orange)
                        .cornerRadius(5)
                    }
                Button("Sec θ") {
                    if (validateInput(inputValue))
                    {
                        //Function operation
                        showSecToast.toggle()
                        
                        if let num1 = Double(inputValue)
                        {
                            result = String(1/(cos(num1 * .pi / 180)))
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                        
                    }
                    else
                    {
                        showSecToast.toggle()
                    }
                        
                }.padding(10)
                    .frame(width: 80,height:65)
                    .background(themeManager.bgColor)
                    .foregroundColor(Color.black)
                    .simpleToast(isPresented: $showSecToast, options: toastOptions, onDismiss:{value+=1}){
                     
                    Text("Sec θ")
                        .edgesIgnoringSafeArea(.bottom)
                        .padding(5)
                        .background(Color.yellow)
                        .cornerRadius(5)
                    }
                Button("cot θ") {
                    if (validateInput(inputValue))
                    {
                        //Function operation
                        showCotToast.toggle()
                        
                        if let num1 = Double(inputValue)
                        {
                            result = String(1/(tan(num1 * .pi / 180)))
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                        
                    }
                    else
                    {
                        showCotToast.toggle()
                    }
                       
                }.padding(10)
                    .frame(width: 80,height:65)
                    .background(themeManager.bgColor)
                    .foregroundColor(Color.black)
                    .simpleToast(isPresented: $showCotToast, options: toastOptions, onDismiss:{value+=1}){
                  
                    Text("Cot θ")
                        .edgesIgnoringSafeArea(.bottom)
                        .padding(5)
                        .background(Color.yellow)
                        .cornerRadius(5)
                    }
            }.padding(5)
            
            HStack{
                Button("X!") {
                    if (validateInput(inputValue))
                    {
                        //Function operation
                        showFactorialToast.toggle()
                        
                        if let num1 = Double(inputValue)
                        {
                            result = String(factorial(num1))
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                        
                        
                        
                    }
                    else
                    {
                        showFactorialToast.toggle()
                    }
                    
                    
                }.padding(10)
                    .frame(width: 80,height:65)
                    .background(themeManager.bgColor)
                    .foregroundColor(Color.black)
                    .simpleToast(isPresented: $showFactorialToast, options: toastOptions, onDismiss:{}){
                        
                    Text("Factorial")
                        .edgesIgnoringSafeArea(.bottom)
                        .padding(5)
                        .background(Color.yellow)
                        .cornerRadius(5)
                    }
                
                Button("X^2") {
                    if (validateInput(inputValue))
                    {
                        //Function operation
                        showSqrToast.toggle()
                        
                        if let num1 = Double(inputValue)
                        {
                            result = String(num1 * num1)
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                    }
                    else
                    {
                        showSqrToast.toggle()
                    }
                }.padding(10)
                    .frame(width: 80,height:65)
                    .background(themeManager.bgColor)
                    .foregroundColor(Color.black)
                    .simpleToast(isPresented: $showSqrToast, options: toastOptions, onDismiss:{}){
                
                    Text("Square Root")
                        .padding(5)
                        .background(Color.yellow)
                        .cornerRadius(5)
                    }
                
                Button("X^3") {
            
                    if (validateInput(inputValue))
                    {
                        //Function operation
                        showCubeToast.toggle()
                        
                        if let num1 = Double(inputValue)
                        {
                            result = String(num1 * num1 * num1)
                            resultValue = "";
                            resultValue.append(String(result))
                        }
                        
                    }
                    else
                    {
                        showCubeToast.toggle()
                    }
                }.padding(10)
                    .frame(width: 80,height:65)
                    .background(themeManager.bgColor)
                    .foregroundColor(Color.black)
                    .simpleToast(isPresented: $showCubeToast, options: toastOptions, onDismiss:{}){
                       
                    Text("Cube Root")
                        .edgesIgnoringSafeArea(.bottom)
                        .padding(5)
                        .background(Color.yellow)
                        .cornerRadius(5)
                 }
              }
            
            HStack{
                
                Button("AC") {
                    
                    showAllClearToast.toggle()
                    inputValue = ""
                    resultValue = ""
                    
                    
                }.padding(10)
                    .frame(width: 295,height:65)
                    .background(themeManager.bgColor)
                    .foregroundColor(Color.black)
                    .simpleToast(isPresented: $showAllClearToast, options: toastOptions, onDismiss:{}){
                        
                    Text("All Clear")
                        .edgesIgnoringSafeArea(.bottom)
                        .padding(5)
                        .background(Color.yellow)
                        .cornerRadius(5)
                    }
            }.padding(5)
            
        }//.background(backgroundLinear)
        
       }
        private func validateInput (_ inputValue: String) -> Bool{
            if inputValue.isEmpty
            {
                errorMessage = "Radiant Value cannot be empty"
                return false
            }
            errorMessage = ""
            return true
        }
    
    func factorial(_ n: Double) -> Double {
        return Double(n < 0 ? 0 : (1...Int(max(1, n))).reduce(1, *))
        }
    }


#Preview {
    ScifiCalcView()
}
