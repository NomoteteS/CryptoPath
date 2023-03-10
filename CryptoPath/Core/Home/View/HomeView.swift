//
//  HomeView.swift
//  CryptoPath
//
//  Created by NomoteteS on 21.12.2022.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // top movers view
                TopMoversView(viewModel: viewModel )
                
                Divider()
                
                // all coins view
                AllCoinsView(viewModel: viewModel)
                
            }.navigationTitle("Live Pricase")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
