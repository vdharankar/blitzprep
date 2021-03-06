//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: grading_periods.proto
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

public protocol Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetCallBase: ClientCallUnaryBase<Soseedy_CreateGradingPeriodSetRequest, Soseedy_GradingPeriodSet>, Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetCall {
  override class var method: String { return "/soseedy.SeedyGradingPeriods/CreateGradingPeriodSet" }
}

public protocol Soseedy_SeedyGradingPeriodsCreateGradingPeriodCall: ClientCallUnary {}

fileprivate final class Soseedy_SeedyGradingPeriodsCreateGradingPeriodCallBase: ClientCallUnaryBase<Soseedy_CreateGradingPeriodRequest, Soseedy_GradingPeriod>, Soseedy_SeedyGradingPeriodsCreateGradingPeriodCall {
  override class var method: String { return "/soseedy.SeedyGradingPeriods/CreateGradingPeriod" }
}


/// Instantiate Soseedy_SeedyGradingPeriodsServiceClient, then call methods of this protocol to make API calls.
public protocol Soseedy_SeedyGradingPeriodsService: ServiceClient {
  /// Synchronous. Unary.
  func createGradingPeriodSet(_ request: Soseedy_CreateGradingPeriodSetRequest) throws -> Soseedy_GradingPeriodSet
  /// Asynchronous. Unary.
  func createGradingPeriodSet(_ request: Soseedy_CreateGradingPeriodSetRequest, completion: @escaping (Soseedy_GradingPeriodSet?, CallResult) -> Void) throws -> Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetCall

  /// Synchronous. Unary.
  func createGradingPeriod(_ request: Soseedy_CreateGradingPeriodRequest) throws -> Soseedy_GradingPeriod
  /// Asynchronous. Unary.
  func createGradingPeriod(_ request: Soseedy_CreateGradingPeriodRequest, completion: @escaping (Soseedy_GradingPeriod?, CallResult) -> Void) throws -> Soseedy_SeedyGradingPeriodsCreateGradingPeriodCall

}

public final class Soseedy_SeedyGradingPeriodsServiceClient: ServiceClientBase, Soseedy_SeedyGradingPeriodsService {
  /// Synchronous. Unary.
  public func createGradingPeriodSet(_ request: Soseedy_CreateGradingPeriodSetRequest) throws -> Soseedy_GradingPeriodSet {
    return try Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func createGradingPeriodSet(_ request: Soseedy_CreateGradingPeriodSetRequest, completion: @escaping (Soseedy_GradingPeriodSet?, CallResult) -> Void) throws -> Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetCall {
    return try Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  public func createGradingPeriod(_ request: Soseedy_CreateGradingPeriodRequest) throws -> Soseedy_GradingPeriod {
    return try Soseedy_SeedyGradingPeriodsCreateGradingPeriodCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  public func createGradingPeriod(_ request: Soseedy_CreateGradingPeriodRequest, completion: @escaping (Soseedy_GradingPeriod?, CallResult) -> Void) throws -> Soseedy_SeedyGradingPeriodsCreateGradingPeriodCall {
    return try Soseedy_SeedyGradingPeriodsCreateGradingPeriodCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
public protocol Soseedy_SeedyGradingPeriodsProvider {
  func createGradingPeriodSet(request: Soseedy_CreateGradingPeriodSetRequest, session: Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetSession) throws -> Soseedy_GradingPeriodSet
  func createGradingPeriod(request: Soseedy_CreateGradingPeriodRequest, session: Soseedy_SeedyGradingPeriodsCreateGradingPeriodSession) throws -> Soseedy_GradingPeriod
}

public protocol Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetSessionBase: ServerSessionUnaryBase<Soseedy_CreateGradingPeriodSetRequest, Soseedy_GradingPeriodSet>, Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetSession {}

public protocol Soseedy_SeedyGradingPeriodsCreateGradingPeriodSession: ServerSessionUnary {}

fileprivate final class Soseedy_SeedyGradingPeriodsCreateGradingPeriodSessionBase: ServerSessionUnaryBase<Soseedy_CreateGradingPeriodRequest, Soseedy_GradingPeriod>, Soseedy_SeedyGradingPeriodsCreateGradingPeriodSession {}


/// Main server for generated service
public final class Soseedy_SeedyGradingPeriodsServer: ServiceServer {
  private let provider: Soseedy_SeedyGradingPeriodsProvider

  public init(address: String, provider: Soseedy_SeedyGradingPeriodsProvider) {
    self.provider = provider
    super.init(address: address)
  }

  public init?(address: String, certificateURL: URL, keyURL: URL, provider: Soseedy_SeedyGradingPeriodsProvider) {
    self.provider = provider
    super.init(address: address, certificateURL: certificateURL, keyURL: keyURL)
  }

  public init?(address: String, certificateString: String, keyString: String, provider: Soseedy_SeedyGradingPeriodsProvider) {
    self.provider = provider
    super.init(address: address, certificateString: certificateString, keyString: keyString)
  }

  /// Start the server.
  public override func handleMethod(_ method: String, handler: Handler, queue: DispatchQueue) throws -> Bool {
    let provider = self.provider
    switch method {
    case "/soseedy.SeedyGradingPeriods/CreateGradingPeriodSet":
      try Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetSessionBase(
        handler: handler,
        providerBlock: { try provider.createGradingPeriodSet(request: $0, session: $1 as! Soseedy_SeedyGradingPeriodsCreateGradingPeriodSetSessionBase) })
          .run(queue: queue)
      return true
    case "/soseedy.SeedyGradingPeriods/CreateGradingPeriod":
      try Soseedy_SeedyGradingPeriodsCreateGradingPeriodSessionBase(
        handler: handler,
        providerBlock: { try provider.createGradingPeriod(request: $0, session: $1 as! Soseedy_SeedyGradingPeriodsCreateGradingPeriodSessionBase) })
          .run(queue: queue)
      return true
    default:
      return false
    }
  }
}

