//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: conversations.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

public protocol Soseedy_SeedyConversationsCreateConversationCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyConversationsCreateConversationCallBase: ClientCallUnaryBase<Soseedy_CreateConversationRequest, Soseedy_Conversation>, Soseedy_SeedyConversationsCreateConversationCall {
  override class var method: String { return "/soseedy.SeedyConversations/CreateConversation" }
}


/// Instantiate Soseedy_SeedyConversationsServiceClient, then call methods of this protocol to make API calls.
public protocol Soseedy_SeedyConversationsService: ServiceClient {
  /// Synchronous. Unary.
  func createConversation(_ request: Soseedy_CreateConversationRequest) throws -> Soseedy_Conversation
  /// Asynchronous. Unary.
  func createConversation(_ request: Soseedy_CreateConversationRequest, completion: @escaping (Soseedy_Conversation?, CallResult) -> Void) throws -> Soseedy_SeedyConversationsCreateConversationCall

}

public final class Soseedy_SeedyConversationsServiceClient: ServiceClientBase, Soseedy_SeedyConversationsService {
  /// Synchronous. Unary.
  public func createConversation(_ request: Soseedy_CreateConversationRequest) throws -> Soseedy_Conversation {
    return try Soseedy_SeedyConversationsCreateConversationCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func createConversation(_ request: Soseedy_CreateConversationRequest, completion: @escaping (Soseedy_Conversation?, CallResult) -> Void) throws -> Soseedy_SeedyConversationsCreateConversationCall {
    return try Soseedy_SeedyConversationsCreateConversationCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
public protocol Soseedy_SeedyConversationsProvider {
  func createConversation(request: Soseedy_CreateConversationRequest, session: Soseedy_SeedyConversationsCreateConversationSession) throws -> Soseedy_Conversation
}

public protocol Soseedy_SeedyConversationsCreateConversationSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyConversationsCreateConversationSessionBase: ServerSessionUnaryBase<Soseedy_CreateConversationRequest, Soseedy_Conversation>, Soseedy_SeedyConversationsCreateConversationSession {}


/// Main server for generated service
public final class Soseedy_SeedyConversationsServer: ServiceServer {
  private let provider: Soseedy_SeedyConversationsProvider

  public init(address: String, provider: Soseedy_SeedyConversationsProvider) {
    self.provider = provider
    super.init(address: address)
  }

  public init?(address: String, certificateURL: URL, keyURL: URL, provider: Soseedy_SeedyConversationsProvider) {
    self.provider = provider
    super.init(address: address, certificateURL: certificateURL, keyURL: keyURL)
  }

  public init?(address: String, certificateString: String, keyString: String, provider: Soseedy_SeedyConversationsProvider) {
    self.provider = provider
    super.init(address: address, certificateString: certificateString, keyString: keyString)
  }

  /// Start the server.
  public override func handleMethod(_ method: String, handler: Handler, queue: DispatchQueue) throws -> Bool {
    let provider = self.provider
    switch method {
    case "/soseedy.SeedyConversations/CreateConversation":
      try Soseedy_SeedyConversationsCreateConversationSessionBase(
        handler: handler,
        providerBlock: { try provider.createConversation(request: $0, session: $1 as! Soseedy_SeedyConversationsCreateConversationSessionBase) })
          .run(queue: queue)
      return true
    default:
      return false
    }
  }
}

