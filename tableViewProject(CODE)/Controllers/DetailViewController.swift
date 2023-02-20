//
//  DetailViewController.swift
//  tableViewProject(CODE)
//
//  Created by KimChoonSik on 2023/02/20.
//

import UIKit

final class DetailViewController: UIViewController {
    
    private let detailView = DetailView()
    
    var movieData: Movie?
    
    //loadView에서 뷰를 갈아주고
    override func loadView() {
        view = detailView
    }
    
    // viewDidLoad에서 요소들을 그려준다
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        detailView.mainImageView.image = movieData?.movieImage
        detailView.movieNameLabel.text = movieData?.movieName
        detailView.descriptionLabel.text = movieData?.movieDescription
    }
}
