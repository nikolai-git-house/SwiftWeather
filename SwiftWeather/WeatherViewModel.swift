//
//  WeatherViewModel.swift
//  SwiftWeather
//
//  Created by Jake Lin on 8/26/15.
//  Copyright © 2015 Jake Lin. All rights reserved.
//

import Foundation

class WeatherViewModel {
  // MARK: - Constants
  let EmptyString = ""
  
  // MARK: - Properties
  let hasError: Observable<Bool>
  let errorMessage: Observable<String?>
  
  let location: Observable<String>
  let iconText: Observable<String>
  let temperature: Observable<String> // https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html#//apple_ref/doc/uid/TP40014097-CH18-XID_314
  let forecasts: Observable<[ForecastViewModel]>
  
  // MARK: - init
  init(_ weather: Weather) {
    hasError = Observable(false)
    errorMessage = Observable(nil)
    
    location = Observable(weather.location)
    iconText = Observable(weather.iconText)
    temperature = Observable(weather.temperature)

    let tempForecasts = weather.forecasts.map {
      (let f) -> ForecastViewModel in
      return ForecastViewModel(f)
    }
    forecasts = Observable(tempForecasts)
  }
  
  init(_ error: Error) {
    hasError = Observable(true)
    
    switch error.errorCode {
    case .URLError:
      errorMessage = Observable("The weather service is not working.")
    case .NetworkRequestFailed:
      errorMessage = Observable("The network appears to be down.")
    case .JSONSerializationFailed:
      errorMessage = Observable("We're having trouble processing weather data.")
    case .JSONParsingFailed:
      errorMessage = Observable("We're having trouble parsing weather data.")
    }
    
    location = Observable(EmptyString)
    iconText = Observable(EmptyString)
    temperature = Observable(EmptyString)
    forecasts = Observable([])
  }

}
