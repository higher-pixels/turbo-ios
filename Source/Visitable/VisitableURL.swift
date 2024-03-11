import WebKit

public protocol URLResolver {
    var resolvedURL: URL { get }
    var topURL: URL { get set }
    var currentURL: URL? { get set }
}

public struct VisitableURL: URLResolver {
    public var resolvedURL: URL {
        currentURL ?? visitableView.webView?.url ?? topURL
    }
    
    public var topURL: URL {
        didSet {
            currentURL = nil
        }
    }
    public var currentURL: URL?
    private let visitableView: VisitableView
    
    public init(url: URL, in visitableView: VisitableView) {
        topURL = url
        self.visitableView = visitableView
    }
}
