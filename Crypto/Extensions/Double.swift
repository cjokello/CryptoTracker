import Foundation

extension Double {
    
    /// converts a Double into a currency with 2 decimal places
    /// ```
    /// Converts 1234.56 to $1,234.56
    /// Converts 12.3456 to $12.35
    /// Converts 0.123456 to $0.12
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // default value
//        formatter.currencyCode = "usd" // change currency
//        formatter.currencySymbol = "$" // change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// converts a Double into a currency with 2 decimal places
    /// ```
    /// Converts 1234.56 to "$1,234.56"
    /// Converts 12.3456 to "$12.35"
    /// Converts 0.123456 to "$0.12"
    /// ```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// converts a Double into a currency with 2-6 decimal places
    /// ```
    /// Converts 1234.56 to $1,234.56
    /// Converts 12.3456 to $12.3456
    /// Converts 0.123456 to $0.123456
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current // default value
//        formatter.currencyCode = "usd" // change currency
//        formatter.currencySymbol = "$" // change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// converts a Double into a currency with 2-6 decimal places
    /// ```
    /// Converts 1234.56 to "$1,234.56"
    /// Converts 12.3456 to "$12.3456"
    /// Converts 0.123456 to "$0.123456"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// converts a Double into a String representation
    /// ```
    /// Converts 1.23456 to "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// converts a Double into a String representation with percent symbol
    /// ```
    /// Converts 1.23456 to "1.23%"
    /// ```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
    
    /// converts a Double into a String with K, M, Bn, Tr abbreviations
    /// ```
    /// Converts 12 to 12.00
    /// Converts 1234 to 1.23K
    /// Converts 123456 to 123.45K
    /// Converts 12345678 to 12.34M
    /// Converts 1234567890 to 1.23Bn
    /// Converts 123456789012 to 123.45Bn
    /// Converts 12345678901234 to 12.34Tr
    /// ```
    func formattedWithAbbreviations() -> String {
        let num = abs(Double(self))
        let sign = (self < 0) ? "-" : ""
        
        switch num {
        case 1_000_000_000_000...:
            let formatted = num / 1_000_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Tr"
        case 1_000_000_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 1_000_000...:
            let formatted = num / 1_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)M"
        case 1_000...:
            let formatted = num / 1_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)K"
        case 0...:
            return self.asNumberString()
        
        default:
            return "\(sign)\(self)"
        }
    }
    
}
