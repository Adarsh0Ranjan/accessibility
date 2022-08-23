//
//  ContentView.swift
//  project-15-overview
//
//  Created by Roro Solutions on 23/08/22.
//

import SwiftUI
//lecture-3-Reading the value of controls
struct ContentView: View {
    @State private var value = 10
    var body: some View {
        VStack {
            Text("Value: \(value)")

            Button("Increment") {
                value += 1
            }

            Button("Decrement") {
                value -= 1
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("Not handled.")
            }
        }
    }
}

//lecture-2-Hiding and grouping accessibility data
//struct ContentView: View {
//    var body: some View {
////        Image(decorative: "character")
////            .accessibilityHidden(true) //With that modifier the image becomes invisible to VoiceOver regardless of what traits it has
//        VStack {
//            Text("Your score is")
//            Text("1000")
//                .font(.title)
//        }
////        .accessibilityElement(children: .combine)
//        .accessibilityElement(children: .ignore)
//        .accessibilityLabel("Your score is 1000")
//    }
//}


// lecture-1-Identifying views with useful labels
//struct ContentView: View {
//    let pictures = [
//        "ales-krivec-15949",
//        "galina-n-189483",
//        "kevin-horstmann-141705",
//        "nicolas-tissot-335096"
//    ]
//    let labels = [
//        "Tulips",
//        "Frozen tree buds",
//        "Sunflowers",
//        "Fireworks",
//    ]
//
//    @State private var selectedPicture = Int.random(in: 0...3)
//
//    var body: some View {
//        Image(pictures[selectedPicture])
//            .resizable()
//            .scaledToFit()
//            .onTapGesture {
//                selectedPicture = Int.random(in: 0...3)
//            }
//            .accessibilityLabel(labels[selectedPicture]) // This allows VoiceOver to read the correct label no matter what image is present. Of course, if your image wasn’t randomly changing you could just type your label directly into the modifier.
//            .accessibilityAddTraits(.isButton)
//            .accessibilityRemoveTraits(.isImage)
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
