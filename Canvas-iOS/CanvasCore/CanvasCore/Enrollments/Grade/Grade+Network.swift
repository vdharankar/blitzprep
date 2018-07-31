//
// Copyright (C) 2016-present Instructure, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
    
    

import ReactiveSwift

import Marshal

extension Grade {
    static func getGrades(_ session: Session, courseID: String, gradingPeriodID: String?) throws -> SignalProducer<[JSONObject], NSError> {
        let request = try GradeAPI.getGrades(session, courseID: courseID, gradingPeriodID: gradingPeriodID)
        return session.paginatedJSONSignalProducer(request).map(insertGradingPeriodID(gradingPeriodID))
    }

    fileprivate static func insertGradingPeriodID(_ gradingPeriodID: String?) -> (_ grades: [JSONObject]) -> [JSONObject] {
        func insertGradingPeriodID(_ json: JSONObject) -> JSONObject {
            var json = json
            json["grading_period_id"] = gradingPeriodID
            return json
        }
        return { grades in grades.map(insertGradingPeriodID) }
    }
}
