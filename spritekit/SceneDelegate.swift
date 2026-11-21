//
//  SceneDelegate.swift
//  spritekit
//

import UIKit

/// Hosts the game's window. iOS 27 launches apps only through the scene lifecycle; the window
/// and its `GameViewController` still come from `Main.storyboard`, named in the generated scene manifest.
final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
}
