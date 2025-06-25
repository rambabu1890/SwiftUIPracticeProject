import Foundation

struct CountryModel : Codable , Identifiable{
    let code : String?
    let name : String?
    let areaSqKm : Int?
    let population : Int?
    let lines : [String]?
    let countries : Int?
    let oceans : [String]?
    let developedCountries : [String]?
    var id: String { code ?? UUID().uuidString }
    
    
    enum CodingKeys: String, CodingKey {

        case code = "code"
        case name = "name"
        case areaSqKm = "areaSqKm"
        case population = "population"
        case lines = "lines"
        case countries = "countries"
        case oceans = "oceans"
        case developedCountries = "developedCountries"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        areaSqKm = try values.decodeIfPresent(Int.self, forKey: .areaSqKm)
        population = try values.decodeIfPresent(Int.self, forKey: .population)
        lines = try values.decodeIfPresent([String].self, forKey: .lines)
        countries = try values.decodeIfPresent(Int.self, forKey: .countries)
        oceans = try values.decodeIfPresent([String].self, forKey: .oceans)
        developedCountries = try values.decodeIfPresent([String].self, forKey: .developedCountries)
    }

}
