//
//  GameViewController.swift
//  DeepOrbit
//
//  Created by Clifton Baggerman on 28/03/2026.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let skView = view as? SKView else { return }
        skView.ignoresSiblingOrder = true
        #if DEBUG
        skView.showsFPS = ProcessInfo.processInfo.environment["SHOW_FPS"] != nil
        skView.showsNodeCount = skView.showsFPS
        #endif
    }

    /// The first scene is built once the view has its real size: under the scene lifecycle the
    /// view is still zero-sized in `viewDidLoad`, and the menu lays itself out from `size`.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        guard let skView = view as? SKView, skView.scene == nil, skView.bounds.size != .zero else { return }

        let scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        true
    }
}
