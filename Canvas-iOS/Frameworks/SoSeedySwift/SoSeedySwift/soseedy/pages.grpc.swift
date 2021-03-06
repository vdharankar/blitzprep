//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: pages.proto
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

public protocol Soseedy_SeedyPagesCreateCoursePageCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyPagesCreateCoursePageCallBase: ClientCallUnaryBase<Soseedy_CreateCoursePageRequest, Soseedy_Page>, Soseedy_SeedyPagesCreateCoursePageCall {
  override class var method: String { return "/soseedy.SeedyPages/CreateCoursePage" }
}


/// Instantiate Soseedy_SeedyPagesServiceClient, then call methods of this protocol to make API calls.
public protocol Soseedy_SeedyPagesService: ServiceClient {
  /// Synchronous. Unary.
  func createCoursePage(_ request: Soseedy_CreateCoursePageRequest) throws -> Soseedy_Page
  /// Asynchronous. Unary.
  func createCoursePage(_ request: Soseedy_CreateCoursePageRequest, completion: @escaping (Soseedy_Page?, CallResult) -> Void) throws -> Soseedy_SeedyPagesCreateCoursePageCall

}

public final class Soseedy_SeedyPagesServiceClient: ServiceClientBase, Soseedy_SeedyPagesService {
  /// Synchronous. Unary.
  public func createCoursePage(_ request: Soseedy_CreateCoursePageRequest) throws -> Soseedy_Page {
    return try Soseedy_SeedyPagesCreateCoursePageCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func createCoursePage(_ request: Soseedy_CreateCoursePageRequest, completion: @escaping (Soseedy_Page?, CallResult) -> Void) throws -> Soseedy_SeedyPagesCreateCoursePageCall {
    return try Soseedy_SeedyPagesCreateCoursePageCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
public protocol Soseedy_SeedyPagesProvider {
  func createCoursePage(request: Soseedy_CreateCoursePageRequest, session: Soseedy_SeedyPagesCreateCoursePageSession) throws -> Soseedy_Page
}

public protocol Soseedy_SeedyPagesCreateCoursePageSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyPagesCreateCoursePageSessionBase: ServerSessionUnaryBase<Soseedy_CreateCoursePageRequest, Soseedy_Page>, Soseedy_SeedyPagesCreateCoursePageSession {}


/// Main server for generated service
public final class Soseedy_SeedyPagesServer: ServiceServer {
  private let provider: Soseedy_SeedyPagesProvider

  public init(address: String, provider: Soseedy_SeedyPagesProvider) {
    self.provider = provider
    super.init(address: address)
  }

  public init?(address: String, certificateURL: URL, keyURL: URL, provider: Soseedy_SeedyPagesProvider) {
    self.provider = provider
    super.init(address: address, certificateURL: certificateURL, keyURL: keyURL)
  }

  public init?(address: String, certificateString: String, keyString: String, provider: Soseedy_SeedyPagesProvider) {
    self.provider = provider
    super.init(address: address, certificateString: certificateString, keyString: keyString)
  }

  /// Start the server.
  public override func handleMethod(_ method: String, handler: Handler, queue: DispatchQueue) throws -> Bool {
    let provider = self.provider
    switch method {
    case "/soseedy.SeedyPages/CreateCoursePage":
      try Soseedy_SeedyPagesCreateCoursePageSessionBase(
        handler: handler,
        providerBlock: { try provider.createCoursePage(request: $0, session: $1 as! Soseedy_SeedyPagesCreateCoursePageSessionBase) })
          .run(queue: queue)
      return true
    default:
      return false
    }
  }
}

