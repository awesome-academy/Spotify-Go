//
//  Assembler.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/3/22.
//

import Foundation

protocol Assembler: AnyObject,
                    AppAssembler,
                    TabbarAssembler,
                    HomeAssembler,
                    SearchAssembler,
                    LibraryAssembler,
                    AuthAssembler {
}

final class DefaultAssembler: Assembler {

}
