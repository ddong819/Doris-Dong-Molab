//
//  UserRowView.swift
//  Twitter2
//
//  Created by   dongyunqi on 2022/5/2.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing:12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Doris Dong")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text(" yunqidong")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
