//
//  TweetRowView.swift
//  Twitter2
//
//  Created by   dongyunqi on 2022/4/28.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            // profile image + user info + tweet
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                //user info & tweet caption
                VStack(alignment: .leading, spacing: 4){
                    //user info
                    HStack{
                        Text("Doris Dong")
                            .font(.subheadline).bold()
                        
                        Text("@yunqidong")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("8.19w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //tweet caption
                    
                    Text("Final week is finished!!")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            //action buttons

            HStack{
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left") //sf symble
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
//        .padding()
        
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
