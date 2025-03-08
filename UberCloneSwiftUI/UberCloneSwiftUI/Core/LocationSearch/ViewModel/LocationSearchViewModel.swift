//
//  LocationSearchViewModel.swift
//  UberCloneSwiftUI
//
//  Created by Martinus Andika Novanawa on 08/03/25.
//

import Foundation
import MapKit

class LocationSearchViewModel: NSObject, ObservableObject {
    // MARK: Properties
    @Published var results = [MKLocalSearchCompletion]()
    private let searchCompleter = MKLocalSearchCompleter()
    var queryFragment: String = "" {
        didSet {
            searchCompleter.queryFragment = queryFragment
        }
    }

    override init() {
        super.init()
        searchCompleter.delegate = self
        searchCompleter.queryFragment = queryFragment
    }
}

// MARK: MKLocalSearchCompleterDelegate
extension LocationSearchViewModel: MKLocalSearchCompleterDelegate {
    func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        self.results = completer.results
    }
}
