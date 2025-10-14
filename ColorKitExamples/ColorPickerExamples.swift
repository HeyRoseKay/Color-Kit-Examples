//
//  ColorPickerExamples.swift
//  ColorKitExamples
//
//  Created by Kieran Brown on 4/13/20.
//  Copyright © 2020 BrownandSons. All rights reserved.
//

import SwiftUI
import ColorKit

// MARK: RGB
struct RGBExample: View {
    @State var color: ColorToken = ColorToken(colorSpace: .sRGB, r: 0.2, g: 0.5, b: 0.8)
    var overlay: some View {
        VStack {
            Text("r: \(String(format: "%.0f", color.red*255))")
            Text("g: \(String(format: "%.0f", color.green*255))")
            Text("b: \(String(format: "%.0f", color.blue*255))")
            Text(String(color.color.description.dropLast(2)))
        }
    }
    var body: some View {
        if #available(iOS 17.0, *) {
            ZStack {
                Color(uiColor: .secondarySystemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 50) {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color.color)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(overlay)
                    RGBColorPicker($color)
                }.padding(40)
            }
                .navigationTitle("RGB Sliders")
                .navigationBarTitleDisplayMode(.inline)
        } else {
            ZStack {
                if #available(iOS 15.0, *) {
                    Color(uiColor: .secondarySystemBackground)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Color(white: 0.2)
                        .edgesIgnoringSafeArea(.all)
                }
                VStack(spacing: 50) {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color.color)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(overlay)
                    RGBColorPicker($color)
                }.padding(40)
            }.navigationBarTitle("RGB Sliders", displayMode: .inline)
        }
    }
}

// MARK: HSB
struct HSBExample: View {
    @State var color: ColorToken = ColorToken(hue: 0.2, saturation: 0.5, brightness: 0.5)
    var overlay: some View {
        VStack {
            Text("h: \(String(format: "%.0f", color.hue*360))")
            Text("s: \(String(format: "%.0f", color.saturation*100))%")
            Text("b: \(String(format: "%.0f", color.brightness*100))%")
            Text(String(color.color.description.dropLast(2)))
        }
    }
    var body: some View {
        if #available(iOS 17.0, *) {
            ZStack {
                Color(uiColor: .secondarySystemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color.color)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(overlay)
                    HSBColorPicker($color)
                }.padding(40)
            }
                .navigationTitle("HSB Slider")
                .navigationBarTitleDisplayMode(.inline)
        } else {
            ZStack {
                if #available(iOS 15.0, *) {
                    Color(uiColor: .secondarySystemBackground)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Color(white: 0.2)
                        .edgesIgnoringSafeArea(.all)
                }
                VStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color.color)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(overlay)
                    HSBColorPicker($color)
                }.padding(40)
            }.navigationBarTitle("HSB Slider", displayMode: .inline)
        }
    }
}

// MARK: - CMYK
struct CMYKExample: View {
    @State var color: ColorToken = ColorToken(cyan: 0.5, magenta: 0.5, yellow: 0.5, keyBlack: 0.5)
    var overlay: some View {
        VStack {
            Text("c: \(String(format: "%.0f", color.cyan*100))%")
            Text("m: \(String(format: "%.0f", color.magenta*100))%")
            Text("y: \(String(format: "%.0f", color.yellow*100))%")
            Text("k: \(String(format: "%.0f", color.keyBlack*100))%")
        }
    }
    var body: some View {
        if #available(iOS 17.0, *) {
            ZStack {
                Color(uiColor: .secondarySystemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing: 50) {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color.color)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(overlay)
                    CMYKColorPicker($color)
                }.padding(40)
            }
                .navigationTitle("CMYK Sliders")
                .navigationBarTitleDisplayMode(.inline)
        } else {
            ZStack {
                if #available(iOS 15.0, *) {
                    Color(uiColor: .secondarySystemBackground)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Color(white: 0.2)
                        .edgesIgnoringSafeArea(.all)
                }
                VStack(spacing: 50) {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color.color)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(overlay)
                    CMYKColorPicker($color)
                }.padding(40)
            }.navigationBarTitle("CMYK Sliders", displayMode: .inline)
        }
    }
}

// MARK: - Gray Scale
struct GrayscaleExample: View {
    @State var color: ColorToken = ColorToken(white: 0.3)
    var overlay: some View {
        VStack {
            Text("white: \(String(format: "%.0f", color.white*100))%")
            Text(String(color.color.description.dropLast(2)))
        }.foregroundColor(color.white > 0.5 ? Color.black : Color.white)
    }
    var body: some View {
        if #available(iOS 17.0, *) {
            ZStack {
                Color(uiColor: .secondarySystemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color.color)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(overlay)
                    GrayScaleSlider($color)
                        .frame(height: 66)
                }.padding(40)
            }
                .navigationTitle("Gray Scale Slider")
                .navigationBarTitleDisplayMode(.inline)
        } else {
            ZStack {
                if #available(iOS 15.0, *) {
                    Color(uiColor: .secondarySystemBackground)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Color(white: 0.2)
                        .edgesIgnoringSafeArea(.all)
                }
                VStack {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(color.color)
                        .background(RoundedRectangle(cornerRadius: 5).stroke(Color.white, lineWidth: 2))
                        .shadow(radius: 3)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(overlay)
                    GrayScaleSlider($color)
                        .frame(height: 66)
                }.padding(40)
            }.navigationBarTitle("Gray Scale Slider")
        }
    }
}

// MARK: Alpha
struct AlphaSliderExample: View {
    @State var color: ColorToken = ColorToken(hue: 0.3, saturation: 0, brightness: 0)
    var body: some View {
        if #available(iOS 17.0, *) {
            ZStack {
                Color(uiColor: .secondarySystemBackground)
                    .edgesIgnoringSafeArea(.all)
                AlphaSlider($color)
                    .frame(height: 40)
                    .padding(40)
            }
                .navigationTitle("Alpha Slider")
                .navigationBarTitleDisplayMode(.inline)
        } else {
            ZStack {
                if #available(iOS 15.0, *) {
                    Color(uiColor: .secondarySystemBackground)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Color(white: 0.2)
                        .edgesIgnoringSafeArea(.all)
                }
                AlphaSlider($color)
                    .frame(height: 40)
                    .padding(40)
            }.navigationBarTitle("Alpha Slider")
        }
    }
}

// MARK: Single Color Picker
struct SingleColorPickerExample: View {
    @State var color: ColorToken = ColorToken(hue: 0.5, saturation: 0.5, brightness: 0.5)
    var body: some View {
        if #available(iOS 17.0, *) {
            ZStack {
                Color(uiColor: .secondarySystemBackground)
                    .edgesIgnoringSafeArea(.all)
                SingleColorPicker($color)
            }
                .navigationTitle("Color Picker")
                .navigationBarTitleDisplayMode(.inline)
        } else {
            ZStack {
                if #available(iOS 15.0, *) {
                    Color(uiColor: .secondarySystemBackground)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Color(white: 0.2)
                        .edgesIgnoringSafeArea(.all)
                }
                SingleColorPicker($color)
            }.navigationBarTitle("Color Picker", displayMode: .inline)
        }
    }
}


// MARK: Pallette Color Picker
struct PalletteColorPickerExample: View {
    @ObservedObject var manager: ColorManager = ColorManager(colors: [ColorToken(hue: 0.9, saturation: 0.5, brightness: 0.5), ColorToken(hue: 0.3, saturation: 0.5, brightness: 0.5), ColorToken(hue: 0.6, saturation: 0.5, brightness: 0.5)])
    var body: some View {
        if #available(iOS 17.0, *) {
            ZStack {
                Color(uiColor: .secondarySystemBackground)
                    .edgesIgnoringSafeArea(.all)
                PalletteColorPicker(_manager)
            }
                .navigationTitle("Color Picker")
                .navigationBarTitleDisplayMode(.inline)
        } else {
            ZStack {
                if #available(iOS 15.0, *) {
                    Color(uiColor: .secondarySystemBackground)
                        .edgesIgnoringSafeArea(.all)
                } else {
                    Color(white: 0.2)
                        .edgesIgnoringSafeArea(.all)
                }
                PalletteColorPicker(_manager)
            }.navigationBarTitle("Color Picker", displayMode: .inline)
        }
    }
}
