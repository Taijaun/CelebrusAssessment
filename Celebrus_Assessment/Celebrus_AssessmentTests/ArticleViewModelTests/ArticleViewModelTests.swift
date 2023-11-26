//
//  ArticleViewModelTests.swift
//  Celebrus_AssessmentTests
//
//  Created by Tai Pitt on 26/11/2023.
//

import XCTest
@testable import Celebrus_Assessment

final class ArticleViewModelTests: XCTestCase {
    
    var viewModel: ArticleListViewModel!
    var networkManager: Networkable!

    override func setUpWithError() throws {
        networkManager = FakeNetworkManager()
        viewModel = ArticleListViewModel(networkManager: networkManager)
    }

    override func tearDownWithError() throws {
        networkManager = nil
        viewModel = nil
    }

    func testApiCallWithEverythingCorrect() async{
        
        XCTAssertNotNil(viewModel)
        
        await viewModel.getArticles(url: "article")
        XCTAssertEqual(viewModel.articlesList.count, 1)
    }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
