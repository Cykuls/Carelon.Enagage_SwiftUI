//
//  APIServices.swift
//  Carelon.Engage_SwiftUI
//
//  Created by Rishop Babu on 11/09/25.
//

import Foundation

//MARK: - API Services
struct APIServices {
    static let baseURL = "https://cykul.in/app/lifeCykul/webservice"
    static let countryCodes = baseURL + "/V3.1.2/countryCodes.php"
    static let login = baseURL + "/Vfinal/one50Login.php"
    static let validateOTP = baseURL + "/V3.1.2/validateOTP.php"
}
