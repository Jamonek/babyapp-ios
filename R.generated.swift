//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try font.validate()
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 0 color palettes.
  struct color {
    fileprivate init() {}
  }
  
  /// This `R.file` struct is generated, and contains static references to 3 files.
  struct file {
    /// Resource file `FontAwesome.otf`.
    static let fontAwesomeOtf = Rswift.FileResource(bundle: R.hostingBundle, name: "FontAwesome", pathExtension: "otf")
    /// Resource file `GoogleService-Info.plist`.
    static let googleServiceInfoPlist = Rswift.FileResource(bundle: R.hostingBundle, name: "GoogleService-Info", pathExtension: "plist")
    /// Resource file `TSMessagesDefaultDesign.json`.
    static let tSMessagesDefaultDesignJson = Rswift.FileResource(bundle: R.hostingBundle, name: "TSMessagesDefaultDesign", pathExtension: "json")
    
    /// `bundle.url(forResource: "FontAwesome", withExtension: "otf")`
    static func fontAwesomeOtf(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.fontAwesomeOtf
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "GoogleService-Info", withExtension: "plist")`
    static func googleServiceInfoPlist(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.googleServiceInfoPlist
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    /// `bundle.url(forResource: "TSMessagesDefaultDesign", withExtension: "json")`
    static func tSMessagesDefaultDesignJson(_: Void = ()) -> Foundation.URL? {
      let fileResource = R.file.tSMessagesDefaultDesignJson
      return fileResource.bundle.url(forResource: fileResource)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.font` struct is generated, and contains static references to 1 fonts.
  struct font: Rswift.Validatable {
    /// Font `FontAwesome`.
    static let fontAwesome = Rswift.FontResource(fontName: "FontAwesome")
    
    /// `UIFont(name: "FontAwesome", size: ...)`
    static func fontAwesome(_ size: CGFloat) -> UIKit.UIFont? {
      return UIKit.UIFont(resource: fontAwesome, size: size)
    }
    
    static func validate() throws {
      if R.font.fontAwesome(size: 42) == nil { throw Rswift.ValidationError(description:"[R.swift] Font 'FontAwesome' could not be loaded, is 'FontAwesome.otf' added to the UIAppFonts array in this targets Info.plist?") }
    }
    
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 6 images.
  struct image {
    /// Image `Baby Pic`.
    static let babyPic = Rswift.ImageResource(bundle: R.hostingBundle, name: "Baby Pic")
    /// Image `Line`.
    static let line = Rswift.ImageResource(bundle: R.hostingBundle, name: "Line")
    /// Image `calendar`.
    static let calendar = Rswift.ImageResource(bundle: R.hostingBundle, name: "calendar")
    /// Image `home`.
    static let home = Rswift.ImageResource(bundle: R.hostingBundle, name: "home")
    /// Image `interface`.
    static let interface = Rswift.ImageResource(bundle: R.hostingBundle, name: "interface")
    /// Image `people-shout`.
    static let peopleShout = Rswift.ImageResource(bundle: R.hostingBundle, name: "people-shout")
    
    /// `UIImage(named: "Baby Pic", bundle: ..., traitCollection: ...)`
    static func babyPic(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.babyPic, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "Line", bundle: ..., traitCollection: ...)`
    static func line(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.line, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "calendar", bundle: ..., traitCollection: ...)`
    static func calendar(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.calendar, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "home", bundle: ..., traitCollection: ...)`
    static func home(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.home, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "interface", bundle: ..., traitCollection: ...)`
    static func interface(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.interface, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "people-shout", bundle: ..., traitCollection: ...)`
    static func peopleShout(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.peopleShout, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 0 nibs.
  struct nib {
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 0 reuse identifiers.
  struct reuseIdentifier {
    fileprivate init() {}
  }
  
  /// This `R.segue` struct is generated, and contains static references to 0 view controllers.
  struct segue {
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 3 storyboards.
  struct storyboard {
    /// Storyboard `App`.
    static let app = _R.storyboard.app()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Onboard`.
    static let onboard = _R.storyboard.onboard()
    
    /// `UIStoryboard(name: "App", bundle: ...)`
    static func app(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.app)
    }
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Onboard", bundle: ...)`
    static func onboard(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.onboard)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.string` struct is generated, and contains static references to 0 localization tables.
  struct string {
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try app.validate()
      try onboard.validate()
    }
    
    struct app: Rswift.StoryboardResourceType, Rswift.Validatable {
      let app_calendar = StoryboardViewControllerResource<CalendarVC>(identifier: "app_calendar")
      let app_feed = StoryboardViewControllerResource<FeedVC>(identifier: "app_feed")
      let app_home = StoryboardViewControllerResource<HomeVC>(identifier: "app_home")
      let app_lifeline = StoryboardViewControllerResource<LifeLineVC>(identifier: "app_lifeline")
      let app_tab = StoryboardViewControllerResource<TabBarController>(identifier: "app_tab")
      let bundle = R.hostingBundle
      let name = "App"
      
      func app_calendar(_: Void = ()) -> CalendarVC? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: app_calendar)
      }
      
      func app_feed(_: Void = ()) -> FeedVC? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: app_feed)
      }
      
      func app_home(_: Void = ()) -> HomeVC? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: app_home)
      }
      
      func app_lifeline(_: Void = ()) -> LifeLineVC? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: app_lifeline)
      }
      
      func app_tab(_: Void = ()) -> TabBarController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: app_tab)
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "home") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'home' is used in storyboard 'App', but couldn't be loaded.") }
        if UIKit.UIImage(named: "interface") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'interface' is used in storyboard 'App', but couldn't be loaded.") }
        if UIKit.UIImage(named: "people-shout") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'people-shout' is used in storyboard 'App', but couldn't be loaded.") }
        if UIKit.UIImage(named: "calendar") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'calendar' is used in storyboard 'App', but couldn't be loaded.") }
        if _R.storyboard.app().app_lifeline() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'app_lifeline' could not be loaded from storyboard 'App' as 'LifeLineVC'.") }
        if _R.storyboard.app().app_calendar() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'app_calendar' could not be loaded from storyboard 'App' as 'CalendarVC'.") }
        if _R.storyboard.app().app_feed() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'app_feed' could not be loaded from storyboard 'App' as 'FeedVC'.") }
        if _R.storyboard.app().app_home() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'app_home' could not be loaded from storyboard 'App' as 'HomeVC'.") }
        if _R.storyboard.app().app_tab() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'app_tab' could not be loaded from storyboard 'App' as 'TabBarController'.") }
      }
      
      fileprivate init() {}
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      fileprivate init() {}
    }
    
    struct onboard: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "Onboard"
      
      static func validate() throws {
        if UIKit.UIImage(named: "Line") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Line' is used in storyboard 'Onboard', but couldn't be loaded.") }
        if UIKit.UIImage(named: "Baby Pic") == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Baby Pic' is used in storyboard 'Onboard', but couldn't be loaded.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
