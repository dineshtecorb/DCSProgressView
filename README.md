# DCSProgressView

A customised ProgressView for iOS 

#This contains a simple code for ProgressView. #Very simple to use, Just drag and drop 2 source files in your project or drag progress folder and start using. #DCSProgressView, #ProgressView

#How to use:

    class ViewController: UIViewController {
        @IBOutlet weak var redProgressView:DCSProgressView!
        @IBOutlet weak var greenProgressView:DCSProgressView!
        @IBOutlet weak var blackProgressView:DCSProgressView!
        @IBOutlet weak var yellowProgressView:DCSProgressView!

        override func viewDidLoad() {
            super.viewDidLoad()
            
            setupData()
        }

        // MARK: -  Setup fill data for all progressViews

        func setupData(){
            //Set data for red progressView
            ProgressView.shared.setupProgressViews(progressView: redProgressView, progressColor: .red, progressBackgroundolor: .lightGray.withAlphaComponent(0.5), progress: 30.0)

            //Set data for green progressView
            ProgressView.shared.setupProgressViews(progressView: greenProgressView, progressColor: .green
                                    , progressBackgroundolor: .darkGray.withAlphaComponent(0.5), progress: 50.0)

            //Set data for black progressView
            ProgressView.shared.setupProgressViews(progressView: blackProgressView, progressColor: .black, progressBackgroundolor: .black.withAlphaComponent(0.1), progress: 70.0)

            //Set data for yellow progressView
            ProgressView.shared.setupProgressViews(progressView: yellowProgressView, progressColor: .yellow, progressBackgroundolor: .yellow.withAlphaComponent(0.2), progress: 90.0)

        }
    }
