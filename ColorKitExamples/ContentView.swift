//
//  ContentView.swift
//  ColorKitExamples
//
//  Created by Kieran Brown on 4/13/20.
//  Copyright © 2020 BrownandSons. All rights reserved.
//

import SwiftUI

// MARK: - Content View
struct ContentView: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            NavigationStack {
                List {
                    Section(header: Text("Color Pickers")) {
                        NavigationLink("RGB", destination: RGBExample())
                        NavigationLink("Rectangular HSB", destination: HSBExample())
                        NavigationLink("Circular HSB", destination: CircularHSBPickerExample())
                        NavigationLink("CMYK", destination: CMYKExample())
                        NavigationLink("Gray Scale", destination: GrayscaleExample())
                        NavigationLink("Alpha", destination: AlphaSliderExample())
                        NavigationLink("Single Color Picker", destination: SingleColorPickerExample())
                        NavigationLink("Pallette Color Picker", destination: PalletteColorPickerExample())
                    }
                    Section(header: Text("Gradient Pickers")) {
                        NavigationLink("Simple Linear", destination: SimpleLinearExample())
                        NavigationLink("Linear", destination: LinearGradientExample())
                        NavigationLink("Simple Radial", destination: SimpleRadialExample())
                        NavigationLink("Radial", destination: RadialGradientExample())
                        NavigationLink("Simple Angular", destination: SimpleAngularExample())
                        NavigationLink("Angular", destination: AngularGradientExample())
                        NavigationLink("Full Gradient Picker", destination: FullGradientPickerExample())
                    }
                }
                .navigationBarTitle("Color Kit")
                .toolbarTitleDisplayMode(.inlineLarge)
            }
        } else {
            NavigationView {
                List {
                    Section(header: Text("Color Pickers")) {
                        NavigationLink("RGB", destination: RGBExample())
                        NavigationLink("Rectangular HSB", destination: HSBExample())
                        NavigationLink("Circular HSB", destination: CircularHSBPickerExample())
                        NavigationLink("CMYK", destination: CMYKExample())
                        NavigationLink("Gray Scale", destination: GrayscaleExample())
                        NavigationLink("Alpha", destination: AlphaSliderExample())
                        NavigationLink("Single Color Picker", destination: SingleColorPickerExample())
                        NavigationLink("Pallette Color Picker", destination: PalletteColorPickerExample())
                    }
                    Section(header: Text("Gradient Pickers")) {
                        NavigationLink("Simple Linear", destination: SimpleLinearExample())
                        NavigationLink("Linear", destination: LinearGradientExample())
                        NavigationLink("Simple Radial", destination: SimpleRadialExample())
                        NavigationLink("Radial", destination: RadialGradientExample())
                        NavigationLink("Simple Angular", destination: SimpleAngularExample())
                        NavigationLink("Angular", destination: AngularGradientExample())
                        NavigationLink("Full Gradient Picker", destination: FullGradientPickerExample())
                    }
                }
                .navigationBarTitle("Color Kit")
            }
        }
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
