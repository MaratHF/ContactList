//
//  ContentView.swift
//  ContactList
//
//  Created by MAC  on 26.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(contactList: contactList)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            ContactListWithDetailInfoView(contactList: contactList)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
