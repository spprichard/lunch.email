import PerfectLib
import PerfectHTTP
import PerfectHTTPServer
//Let me deply damit

// Set up Routes
let routes = Routes([
    Route(method: .get, uri: "/", handler: { (request, response) in
        response.setBody(string: "Hello, World!")
        response.completed()
    })
])

// Config Server
let server = HTTPServer()
server.serverPort = 8181
server.addRoutes(routes)

// Run Server
do {
    try server.start()
}catch PerfectError.networkError(let error, let message) {
    print("Error: \(error) -> Message: \(message)")
}
