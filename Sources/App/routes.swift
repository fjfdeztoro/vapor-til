import Vapor
import Fluent

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    try router.register(collection: AcronymsController())
    try router.register(collection: UserController())
    try router.register(collection: CategoriesController())
}
