import UIKit

// Enum -> User defined data type that has a fixed set of related values.
// enum keywork to create enum
// eg enum season{   season -> name of the enum
//      case spring     we use case keyword to declare values inside enum
//      case summer
//      case winter
//}


enum SocialMedia : String , CaseIterable{
    case Twitter = "I'm Twitter"                //The values assigned are Raw values
    case Facebook = "I'm Facebook"
    case Instagram = "I'm Instagram"
    case Whatsapp = "I'm whatsapp"
}

func shareOnSocialMedia(platform : SocialMedia){
    switch platform{
    case .Twitter:
        print("Share on Twitter")
    case .Facebook:
        print("Share on Facebook")
    case .Instagram:
        print("Share on Instagram")
    case .Whatsapp:
        print("Share on Whatsapp")
    }
}

print(SocialMedia.allCases.count)

shareOnSocialMedia(platform: .Instagram)
var fb = SocialMedia.Facebook  //We can also store the enum cases in a variable
print(fb.rawValue)  //Printing rawe values


//Example 2

enum season : CaseIterable{     //CaseIterable puts all the cases into a collection
    case Summer
    case Rainy
    case Winter
    case Autum
    case Spring
}

func season_names(season_name : season){
    switch season_name{
    case .Summer:
        print("Hey , I'm \(season_name)")
    
    case .Rainy:
        print("Hey , I'm \(season_name)")

    case .Winter:
        print("Hey , I'm \(season_name)")

    case .Autum:
        print("Hey , I'm \(season_name)")

    case .Spring:
        print("Hey , I'm \(season_name)")
    }
}

season_names(season_name: .Summer)

print(season.allCases.count)

//Example 3

enum SocialMediaplatforms{
    case Twitter(followers : Int)
    case YouTube(subscribers : Int)
    case Facebook
    case Instagram
    case Whatsapp
}

func ifSponsored(platform : SocialMediaplatforms){
    switch platform{
    case .Twitter(let followers) where followers > 10000:
        print("You are eligible for sponsorship")
    
    case .YouTube(let subscribers) where subscribers > 1000:
        print("You are eligible for sponsorship")

    case .Instagram , .Facebook , .Whatsapp , .Twitter , .YouTube :
        print("You are not eligible for sponsorship")
    }
}

ifSponsored(platform: .Whatsapp)
ifSponsored(platform: .YouTube(subscribers: 90000))
