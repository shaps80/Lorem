import SwiftUI

public extension Lorem where Content == Text {

    /// Returns a placeholder for representing a title
    static var title: Content {
        .init(Lorem<String>.title)
    }

    /// Returns a placeholder for representing a person's first name
    static var firstName: Content {
        .init(Lorem<String>.firstName)
    }

    /// Returns a placeholder for representing a person's last name
    static var lastName: Content {
        .init(Lorem<String>.lastName)
    }

    /// Returns a placeholder for representing a person's name
    static var name: Content {
        .init(Lorem<String>.name)
    }

    /// Returns a placeholder for representing a single sentence
    static var sentence: Content {
        .init(Lorem<String>.sentence)
    }

    /// Returns a placeholder for representing the specified number of sentences
    /// - Parameters:
    ///   - count: The number of times a sentence should be generated
    ///   - separator: The separator to use when composing these sentences
    static func sentences(_ count: Int, separator: String = "\n") -> Content {
        .init(Lorem<String>.sentences(count, separator: separator))
    }

    /// Returns a placeholder for representing a single paragraph
    static var paragraph: Content {
        .init(Lorem<String>.paragraph)
    }

    /// Returns a placeholder for representing the specified number of paragraphs
    /// - Parameters:
    ///   - count: The number of times a paragraph should be generated
    ///   - separator: The separator to use when composing these paragraphs
    static func paragraphs(_ count: Int, separator: String = "\n") -> Content {
        .init(Lorem<String>.paragraphs(count, separator: separator))
    }

    /// Returns a placeholder URL
    static var url: Content {
        .init(Lorem<String>.url)
    }

    /// Returns a placeholder email address
    static var email: Content {
        .init(Lorem<String>.email)
    }

    /// Returns a 140 character placeholder representing a tweet
    static var tweet: Content {
        .init(Lorem<String>.tweet)
    }

    /// Returns a placeholder date, within the past 20 years, using the ISO8601 format
    static var date: Content {
        .init(Lorem<String>.date(.iso8601))
    }

    /// Returns a placeholder date, within the past 20 years, using the specified format
    /// - Parameter format: The format to apply to the date
    static func date(format: DateFormat) -> Content {
        .init(Lorem<String>.date(format))
    }

    /// Returns a placeholder date with the specified configuration
    /// - Parameters:
    ///   - value: The value to use to offset the calendar component
    ///   - component: The calendar component to offset
    ///   - locale: The locale the `Calendar` should use
    ///   - format: The format to apply to the date
    static func date(within value: Int, component: DateComponent, locale: Locale = .init(identifier: "en_US_POSIX"), format: DateFormat) -> Content {
        .init(Lorem<String>.date(within: value, component: component, locale: locale, format: format))
    }

}