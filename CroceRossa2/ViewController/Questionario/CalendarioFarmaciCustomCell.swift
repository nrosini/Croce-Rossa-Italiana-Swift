//
//  CalendarioFarmaciCustomCell.swift
//  CroceRossa2
//
//  Created by Admin_6150 on 24/07/18.
//  Copyright © 2018 Informatica_4Binf. All rights reserved.
//

import UIKit

class CalendarioFarmaciCustomCell: UITableViewCell{

    @IBOutlet var labelGiornoSettimana: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static var giorno : String = String()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        NotificationCenter.default.addObserver(self, selector: #selector(reloadCollectionView), name: NSNotification.Name("loadCollection"), object: nil)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @objc func reloadCollectionView(){
        print("CADAVERE")
        self.collectionView.reloadData()
        /*self.collectionView.performBatchUpdates({
            let indexPath = IndexPath(row: AddFarmacoViewController.farmaco.getGiornoOra().getCount(giorno: CalendarioFarmaciCustomCell.giorno) - 1, section: 0)
            self.collectionView.insertItems(at: [indexPath])
            }, completion: nil)*/
    }

}

extension CalendarioFarmaciCustomCell {
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
        
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        //collectionView.tag = row
        collectionView.reloadData()
    }
    
}

/*extension AddFarmacoViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellaCollectionView", for: indexPath) as! OrarioFarmaciCustomCollectionViewCell
        
        cell.labelOra.text = AddFarmacoViewController.farmaco.getGiornoOra().getOra(giorno: CalendarioFarmaciCustomCell.giorno, indice: indexPath.item)
        
        cell.labelDose.text = AddFarmacoViewController.farmaco.getGiornoOra().getDose(giorno: CalendarioFarmaciCustomCell.giorno, indice: indexPath.item)
        
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("GIORNO CELLA: ", AddFarmacoViewController.farmaco.getGiornoOra().getCount(giorno: CalendarioFarmaciCustomCell.giorno))
        return AddFarmacoViewController.farmaco.getGiornoOra().getCount(giorno: CalendarioFarmaciCustomCell.giorno)
    }
}*/
