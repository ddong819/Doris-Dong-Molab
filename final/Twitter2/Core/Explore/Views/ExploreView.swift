//
//  ExploreView.swift
//  Twitter2
//
//  Created by   dongyunqi on 2022/4/29.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(0 ... 25, id: \.self){ _ in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                UserRowView() //connect with the user row view in users
                            }
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
