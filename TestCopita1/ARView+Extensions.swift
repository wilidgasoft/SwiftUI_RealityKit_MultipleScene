//
//  ARView+Extensions.swift
//  TestCopita1
//
//  Created by wilman garcia on 2/04/23.
//

import Foundation
import RealityKit
import ARKit




extension ARView {
    func addCoachingOverlay() {
        let coachingOverlay = ARCoachingOverlayView()
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.goal = .horizontalPlane
        coachingOverlay.session = self.session
        self.addSubview(coachingOverlay)
    }
}
