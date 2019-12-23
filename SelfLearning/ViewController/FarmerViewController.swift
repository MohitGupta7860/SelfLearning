import UIKit
import SnapKit

class FarmerViewController: UIViewController {
    let farmerViewModel: FarmerViewModel
    
    init(farmerViewModel: FarmerViewModel) {
        self.farmerViewModel = farmerViewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupTableView()
        setupNavigation()
        farmerViewModel.getFarmerData()
    }
    
    func setupNavigation() {
        
    }
    
    func setupTableView() {
        let farmerTableView: UITableView = {
            let tableView = UITableView()
            tableView.backgroundColor = .clear
            return tableView
        }()
        
        farmerTableView.delegate = self
        farmerTableView.dataSource = self
        
        farmerTableView.register(FarmerTableViewCell.self, forCellReuseIdentifier: "FarmerTableViewCell")
        
        view.addSubview(farmerTableView)
        farmerTableView.snp.makeConstraints { make in
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }
}

extension FarmerViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return farmerViewModel.farmerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let farmerCell = tableView.dequeueReusableCell(withIdentifier: "FarmerTableViewCell", for: indexPath) as? FarmerTableViewCell else  { return UITableViewCell() }
        farmerCell.configureCell(farmer: farmerViewModel.farmerList[indexPath.row])
        return farmerCell
    }
}

extension FarmerViewController: UITableViewDelegate {
    
}
