//
//  WeatherViewModel.swift
//  SwiftWeather
//
//  Created by Jake Lin on 8/26/15.
//  Copyright © 2015 Jake Lin. All rights reserved.
//

import Foundation

class WeatherViewModel {
  let hasError: Observable<Bool>
  let errorMessage: Observable<String?>
  
  let location: Observable<String>
  let iconText: Observable<String>
  let temperature: Observable<String> // https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html#//apple_ref/doc/uid/TP40014097-CH18-XID_314
  let forecasts: Observable<[ForecastViewModel]>
  
  init(_ weather: Weather) {
    hasError = Observable(weather.hasError)
    errorMessage = Observable(weather.errorMessage)
    
    location = Observable(weather.location)
    iconText = Observable(weather.iconText)
    temperature = Observable(weather.temperature)

    let tempForecasts = weather.forecasts.map {
      (let f) -> ForecastViewModel in
      return ForecastViewModel(f)
    }
    forecasts = Observable(tempForecasts)
  }
}
