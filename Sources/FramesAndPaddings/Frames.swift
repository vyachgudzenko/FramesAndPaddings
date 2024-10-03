//
//  File.swift
//  
//
//  Created by Вячеслав Гудзенко on 03.10.2024.
//

import Foundation
import SwiftUI

struct Height: ViewModifier{
    let size: CGFloat
    let alignment: Alignment
    
    init(_ size: CGFloat, alignment: Alignment = .center) {
        self.size = size
        self.alignment = alignment
    }
    
    func body(content: Content) -> some View {
        content
            .frame(height: size, alignment: alignment)
    }
}

extension View{
    
    func height(_ size: CGFloat, alignment: Alignment = .center) -> some View{
        self.modifier(Height(size, alignment: alignment))
    }
}

struct Width: ViewModifier{
    let size: CGFloat
    let alignment: Alignment
    
    init(_ size: CGFloat, alignment: Alignment = .center) {
        self.size = size
        self.alignment = alignment
    }
    
    func body(content: Content) -> some View {
        content
            .frame(width: size, alignment: alignment)
    }
}

extension View{
    
    func width(_ size: CGFloat, alignment: Alignment = .center) -> some View{
        self.modifier(Width(size, alignment: alignment))
    }
}

struct Square: ViewModifier{
    let sizeOfSide: CGFloat
    let alignment: Alignment
    
    init(_ sizeOfSide: CGFloat, alignment: Alignment = .center) {
        self.sizeOfSide = sizeOfSide
        self.alignment = alignment
    }
    
    func body(content: Content) -> some View {
        content
            .frame(width: sizeOfSide, height: sizeOfSide, alignment: alignment)
    }
}

extension View{
    
    func square(_ sizeOfSide: CGFloat, alignment: Alignment = .center) -> some View{
        self.modifier(Square(sizeOfSide, alignment: alignment))
    }
}

struct Rectangle: ViewModifier{
    let width: CGFloat
    let height: CGFloat
    let alignment: Alignment
    
    init(_ width: CGFloat, _ height: CGFloat, alignment: Alignment = .center) {
        self.width = width
        self.height = height
        self.alignment = alignment
    }
    
    func body(content: Content) -> some View {
        content
            .frame(width: width, height: height, alignment: alignment)
    }
}

extension View{
    
    func rectangle(_ width: CGFloat, _ height: CGFloat, alignment: Alignment = .center) -> some View{
        self.modifier(Rectangle(width, height, alignment: alignment))
    }
}
