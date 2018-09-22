import UIKit
import InterfaceBacked

final class ViewController: UIViewController, UITableViewDataSource, StoryboardBacked {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var container: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 48

        tableView.register(Cell.cellNib, forCellReuseIdentifier: Cell.identifier)
        
        let view = SomeView.newFromNib()
        container.addSubview(view)
        container.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        container.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        container.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        container.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.identifier) as? Cell else { fatalError() }
        cell.label.text = "(╯°□°）╯︵ ┻━┻"
        return cell
        
    }
}

