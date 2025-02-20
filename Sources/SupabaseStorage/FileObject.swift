public struct FileObject {
  public var name: String
  public var id: String
  public var updatedAt: String
  public var createdAt: String
  public var lastAccessedAt: String
  public var metadata: [String: Any]

  public init?(from dictionary: [String: Any]) {
    guard
      let name = dictionary["name"] as? String,
      let id = dictionary["id"] as? String,
      let updatedAt = dictionary["updated_at"] as? String,
      let createdAt = dictionary["created_at"] as? String,
      let lastAccessedAt = dictionary["last_accessed_at"] as? String,
      let metadata = dictionary["metadata"] as? [String: Any]
    else {
      return nil
    }

    self.name = name
    self.id = id
    self.updatedAt = updatedAt
    self.createdAt = createdAt
    self.lastAccessedAt = lastAccessedAt
    self.metadata = metadata
  }
}
