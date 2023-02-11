//
//  CarouselView.swift
//  Dogstagram
//
//  Created by Alptekin's Macbook on 11.02.2023.
//

import SwiftUI

struct CarouselView: View {
    @State var selection: Int = 1
    @State var timer_added: Bool = false
    let max_count: Int = 8
    var body: some View {
        TabView(selection: $selection) {
            ForEach(1..<max_count) { count in
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .animation(.default, value: 2)
        .onAppear {
            if !timer_added{
                add_timer()
            }
        }

    }
    
    // MARK: Functions
    
    func add_timer() {
        timer_added = true
        let timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { (timer) in
            if selection == max_count - 1 {
                selection = 1
            } else {
                selection+=1;
            }
        }
        
        timer.fire()
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
            .previewLayout(.sizeThatFits)
    }
}
