// ReactYogaExample - Copyright © 2018 Koen. All rights reserved.

import UIKit
import YogaKit

class NativeViewController: UIViewController {

    let contentView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(contentView)

        contentView.backgroundColor = .gray

        contentView.configureLayout { layout in
            layout.isEnabled = true
            layout.width = YGValue(self.view.bounds.width)
            layout.padding = 10
        }

        let item1 = UIView()
        item1.backgroundColor = .red

        item1.configureLayout { layout in
            layout.isEnabled = true
            layout.height = 80
            layout.marginBottom = 10
        }
        contentView.addSubview(item1)

        let item2 = UIView()
        item2.backgroundColor = .blue

        item2.configureLayout { layout in
            layout.isEnabled = true
            layout.height = 80
            layout.marginBottom = 10
        }
        contentView.addSubview(item2)

        let bridge = (UIApplication.shared.delegate as! AppDelegate).bridge

        let reactView: RCTRootView = RCTRootView(bridge: bridge,
                                    moduleName: "ReactYogaExample",
                                    initialProperties: [:])

        reactView.configureLayout { layout in
            layout.isEnabled = true
            layout.height = 200
        }
        contentView.addSubview(reactView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        contentView.yoga.width = YGValue(self.view.bounds.width)
        contentView.yoga.applyLayout(preservingOrigin: true,
                                     dimensionFlexibility: .flexibleHeight)
    }

}
