//
//  BasicCalcView.swift
//  NewSwiftCalculator
//
//  Created by Satya Palakodeti on 12/17/24.
//

import SimpleToast
import SwiftUI


let backgroundGradient =
LinearGradient(gradient: Gradient(colors: [.orange, .white, .green]),
               startPoint: .top,
               endPoint: .bottom
)
let backgroundRadial = RadialGradient(gradient: Gradient(colors: [.orange, .white, .green]),center: .center,startRadius: 5 , endRadius: 100)

struct BasicCalcView: View {
    
    @EnvironmentObject var themeManager: ThemeManager
    
    @State private var inputValueOne: String = "";
    @State private var inputValueTwo: String = "";
    @State private var inputValueThree: String = "";
    @State private var result: Float = 0;
    @State private var showAddToast = false;
    @State private var showSubstractToast = false;
    @State private var showMultiplyToast = false;
    @State private var showClearToast = false;
    @State private var showModToast = false;
    @State private var showDivToast = false;
    @State private var showSqrtToast = false;
    @State private var showAllClearToast = false;
    @State private var message: String = "Enter input values !!!"
    @State private var selectedOption = "I1"
        
    let options = ["I1", "I2"]

    
    private let toastOptions = SimpleToastOptions(
        alignment: .bottom,
        hideAfter: 1,
        backdropColor: Color.blue.opacity(0.3),
        animation: .default,
        modifierType: .slide
    )
    
    private var inputError: String?
    
    {
        if (inputValueOne.isEmpty && inputValueTwo.isEmpty){
            return "Input Value 1 & 2 Cannot be Empty"
        }else if (inputValueOne.isEmpty && !inputValueTwo.isEmpty){
            return "Input Value 1 Cannot be Empty"
        }else if (!inputValueOne.isEmpty && inputValueTwo.isEmpty){
            return "Input Value 2 Cannot be Empty"
        }else{
            return inputValueOne
        }
    }
    var body: some View {
        
       
    
        /*if let error = inputError {
            Text(error)
                .foregroundColor(.red)
                .font(.caption)
        }*/
        ZStack{
            
        }
        VStack {
                   Text("Basic Calculator")
        }
              
            ScrollView{
                
                HStack {
                        
                        ForEach(options, id: \.self) { option in
                            HStack {
                                Image(systemName: selectedOption == option ? "largecircle.fill.circle" : "circle")
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                        selectedOption = option
                                    }
                                Text(option)
                                    .onTapGesture {
                                        selectedOption = option
                                    }
                                //Spacer()
                            }
                        }
                    }
                    .padding()
                
                TextField("Enter 1st Input", text: $inputValueOne)
                    .frame(width: 150, height: 35, alignment: .center)
                    .background(Color.orange)
                TextField("Enter 2nd Input", text: $inputValueTwo)
                    .frame(width: 150, height: 35, alignment: .center)
                    .background(Color.white)
                TextField("Result", text: $inputValueThree)
                    .frame(width: 150, height: 35, alignment: .center)
                    .background(Color.green)
                
                HStack{
                    Button("1") {
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("1")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("1")
                            }
                        }
                        displayNum()
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                        .foregroundColor(Color.black)
                    
                    Button("2") {
                        
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("2")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("2")
                            }
                        }
                        displayNum()
                        
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                         .foregroundColor(Color.black)
                    
                    Button("3") {
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("3")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("3")
                            }
                        }
                        displayNum()
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                         .foregroundColor(Color.black)

                }.padding(5)
                    
                HStack{
                    Button("4") {
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("4")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("4")
                            }
                        }
                        displayNum()
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                         .foregroundColor(Color.black)
                    
                    Button("5") {
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("5")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("5")
                            }
                        }
                        displayNum()
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                         .foregroundColor(Color.black)
                    
                    Button("6") {
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("6")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("6")
                            }
                        }
                        displayNum()
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                         .foregroundColor(Color.black)
                }.padding(5)
                HStack{
                    Button("7") {
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("7")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("7")
                            }
                        }
                        displayNum()
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                        .foregroundColor(Color.black)
                    
                    Button("8") {
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("8")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("8")
                            }
                        }
                        displayNum()
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                         .foregroundColor(Color.black)
                    
                    Button("9") {
                        func displayNum()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("9")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("9")
                            }
                        }
                        displayNum()
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                        .foregroundColor(Color.black)

                }.padding(5)
                HStack{
                    Button("0") {
                        
                        func displayZero()
                        {
                            if(selectedOption == "I1")
                            {
                                inputValueOne.append("0")
                            }
                            
                            if(selectedOption == "I2")
                            {
                                inputValueTwo.append("0")
                            }
                        }
                        
                        displayZero()
                           
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(themeManager.bgColor)
                        .foregroundColor(Color.black)

                }.padding(5)
                
                HStack{
                    Button("+") {
                        
                        func addValidation()
                        {
                            
                            var toastMessage = ""
                            
                            if (inputValueOne.isEmpty && inputValueTwo.isEmpty)
                             {
                                showAddToast.toggle()
                                toastMessage = "❌ Password cannot be empty"
                             }
                             else if (!inputValueOne.isEmpty && inputValueTwo.isEmpty)
                             {
                                 showAddToast.toggle()
                                 if let num1 = Float(inputValueOne) {
                                     result = num1 + 0.0
                                     inputValueThree = String(result)
                                 }
                             }else if (inputValueOne.isEmpty && !inputValueTwo.isEmpty)
                             {
                                 showAddToast.toggle()
                                 if let num1 = Float(inputValueTwo) {
                                     result = num1 + 0.0
                                     inputValueThree = String(result)
                                 }
                             }else
                             {
                                 showAddToast.toggle()
                                 if let num1 = Float(inputValueOne),let num2 = Float(inputValueTwo) {
                                     result = num1 + num2
                                     inputValueThree = String(result)
                                 }
                             }
                        }
                      
                        addValidation()
                        
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(Color.purple)
                        .foregroundColor(Color.white)
                        .simpleToast(isPresented: $showAddToast, options: toastOptions, onDismiss:{}){
                            
                        Text("Add")
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(5)
                        }
                    Button("-") {
                        
                        if (inputValueOne.isEmpty && inputValueTwo.isEmpty)
                         {
                            showSubstractToast.toggle()
                         }
                         else if (!inputValueOne.isEmpty && inputValueTwo.isEmpty)
                         {
                             showSubstractToast.toggle()
                             if let num1 = Float(inputValueOne) {
                                 result = num1 - 0.0
                                 inputValueThree = String(result)
                             }
                         }else if (inputValueOne.isEmpty && !inputValueTwo.isEmpty)
                         {
                             showSubstractToast.toggle()
                             if let num1 = Float(inputValueTwo) {
                                 result = num1 - 0.0
                                 inputValueThree = String(result)
                             }
                         }else
                         {
                             showSubstractToast.toggle()
                             if let num1 = Float(inputValueOne),let num2 = Float(inputValueTwo) {
                                 result = num1 - num2
                                 inputValueThree = String(result)
                             }
                         }
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(Color.indigo)
                        .foregroundColor(Color.white)
                        .simpleToast(isPresented: $showSubstractToast, options: toastOptions, onDismiss:{}){
                            
                        Text("Substract")
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(5)
                        }
                    
                    
                    Button("*") {
                    
                        if inputError == nil
                        {
                            //Function operation
                            showMultiplyToast.toggle()
                        }
                        else
                        {
                            showMultiplyToast.toggle()
                            if let num1 = Float(inputValueOne), let num2 = Float(inputValueTwo) {
                                result = num1 * num2
                                inputValueThree = String(result)
                            }
                        }
                        
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .simpleToast(isPresented: $showMultiplyToast, options: toastOptions, onDismiss:{}){
                            
                        Text("Multiply")
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(5)
                        }
                    Button("C") {
                        if inputError == nil || inputValueOne != "" && inputValueTwo != ""
                        {
                            //Function operation
                            showAllClearToast.toggle()
                            inputValueOne = ""
                            inputValueTwo = ""
                        }
                        else
                        {
                            showAllClearToast.toggle()
                        }
                            
                   }.padding(10)
                        .frame(width: 65,height:65)
                        .background(Color.mint)
                        .foregroundColor(Color.white)
                        .simpleToast(isPresented: $showClearToast, options: toastOptions, onDismiss:{}){
                            
                        Text("Clear")
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(5)
                        }
                }.padding(5)
                 
                    
                HStack{
                    
                    
                    Button("%") {
                        
                        if inputError == nil
                        {
                            //Function operation
                            showModToast.toggle()
                        }
                        else
                        {
                            showModToast.toggle()
                            if let num1 = Float(inputValueOne), let num2 = Float(inputValueTwo) {
                                result = num1.truncatingRemainder(dividingBy: num2)
                                inputValueThree = String(result)
                            }
                        }
                        
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(Color.cyan)
                        .foregroundColor(Color.white)
                        .simpleToast(isPresented: $showModToast, options: toastOptions, onDismiss:{}){
                            
                        Text("Mod Division")
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(5)
                        }
                    Button("/") {
                        if inputError == nil
                        {
                            //Function operation
                            showDivToast.toggle()
                        }
                        else
                        {
                            showDivToast.toggle()
                            if let num1 = Float(inputValueOne), let num2 = Float(inputValueTwo) {
                                result = num1 / num2
                                inputValueThree = String(result)
                            }
                        }
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(Color.secondary)
                        .foregroundColor(Color.white)
                        .simpleToast(isPresented: $showDivToast, options: toastOptions, onDismiss:{}){
                            
                        Text("Division")
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(5)
                        }
                    Button("√") {
                        if inputError == nil
                        {
                            //Function operation
                            showSqrtToast.toggle()
                        }
                        else
                        {
                            showSqrtToast.toggle()
                            if let num1 = Float(inputValueOne) {
                                result = sqrt(num1)
                                inputValueThree = String(result)
                            }
                        }
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .simpleToast(isPresented: $showSqrtToast, options: toastOptions, onDismiss:{}){
                            
                        Text("Square Root")
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(5)
                        }
                    Button("AC") {
                        if inputError == nil || inputValueOne != "" || inputValueTwo != "" || inputValueOne == "" || inputValueTwo == ""
                        {
                            //Function operation
                            showAllClearToast.toggle()
                            inputValueOne = ""
                            inputValueTwo = ""
                            inputValueThree = ""
                        }
                        else
                        {
                            showAllClearToast.toggle()
                        }
                    }.padding(10)
                        .frame(width: 65,height:65)
                        .background(Color.brown)
                        .foregroundColor(Color.white)
                        .simpleToast(isPresented: $showAllClearToast, options: toastOptions, onDismiss:{}){
                            
                        Text("All Clear")
                            .edgesIgnoringSafeArea(.bottom)
                            .padding(5)
                            .background(Color.yellow)
                            .cornerRadius(5)
                        }
                }.padding(5)
                 
            }
        }//.background(backgroundGradient)
        
    }




#Preview {
    BasicCalcView()
}
