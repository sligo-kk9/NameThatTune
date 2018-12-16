//
//  ThatTrack.swift
//  NameThatTune
//
//  Created by ksa on 16/12/18.
//  Copyright © 2018 ksa. All rights reserved.
//

import Foundation
import ScriptingBridge

public class ThatTrack: NSObject {
    public let title: String
    public let artist: String
    public let data: Data?
    
    public override init() {
        if let iTunes: iTunesApplication = SBApplication.init(bundleIdentifier: "com.apple.iTunes"),
            let track = iTunes.currentTrack {
            title = track.name ?? ""
            artist = track.artist ?? ""
            if let artworks = track.artworks!() as? [iTunesArtwork], let art = artworks.first {
                data = art.rawData
            } else {
                data = nil
            }
        } else {
            title = ""
            artist = ""
            data = nil
        }
        super.init()
    }
}
