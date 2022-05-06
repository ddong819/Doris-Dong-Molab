//
//  AuthViewModel.swift
//  Twitter2
//
//  Created by   dongyunqi on 2022/5/5.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    
    init(){
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String){
        print("DEBUG: Login with email \(email)")
//        Auth.auth().signIn(withEmail: email, password: password){ result, error in
//            if let error = error{
//                print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
//                return
//            }
//            guard let user = result?.user else{ return }
//            self.userSession = user
//            print("DEBUG: Did log user in..")
//        }
    } 
    
    func register(withEmail email: String, password: String, fullname: String, username: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error\(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else{ return }
            self.userSession = user
            
            print("DEBUG: Registered user successful")
            print("DEBUG: User is \(self.userSession)")

            let data = ["email": email,
                        "username": username.lowercased(),
                        "fullname":fullname,
                        "uid": user.uid]

            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data){ _ in
                    print("DEBUG: Did upload user data..")
                }
        }
    }
     
    func sighOut(){
        //sets user session to nil so we show login view
    userSession = nil
        //sign user out on serber
//        try? Auth.auth().signOut()
}
}
