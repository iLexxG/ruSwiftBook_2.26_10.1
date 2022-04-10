//
//  DataManager.swift
//  CurrencyRates
//
//  Created by Alex Golyshkov on 08.04.2022.
//

enum Currency: String, CaseIterable{
    case aud = "AUD"
    case azn = "AZN"
    case gbp = "GBP"
    case amd = "AMD"
    case byn = "BYN"
    case bgn = "BGN"
    case brl = "BRL"
    case huf = "HUF"
    case hkd = "HKD"
    case dkk = "DKK"
    case usd = "USD"
    case eur = "EUR"
    case inr = "INR"
    case kzt = "KZT"
    case cad = "CAD"
    case kgs = "KGS"
    case cny = "CNY"
    case mdl = "MDL"
    case nok = "NOK"
    case pln = "PLN"
    case ron = "RON"
    case xdr = "XDR"
    case sgd = "SGD"
    case tjs = "TJS"
    case `try` = "TRY"
    case tmt = "TMT"
    case uzs = "UZS"
    case uah = "UAH"
    case czk = "CZK"
    case sek = "SEK"
    case chf = "CHF"
    case zar = "ZAR"
    case krw = "KRW"
    case jpy = "JPY"
    
   func description() -> String {
        switch self {
        case .aud:
            return "Австралийский доллар (A$)"
        case .azn:
            return "Азербайджанский манат (₼)"
        case .gbp:
            return "Фунт стерлингов (£)"
        case .amd:
            return "Армянских драмов (֏)"
        case .byn:
            return "Белорусский рубль (Br)"
        case .bgn:
            return "Болгарский лев (лв.)"
        case .brl:
            return "Бразильский реал (R$)"
        case .huf:
            return "Венгерских форинтов (Ft)"
        case .hkd:
            return "Гонконгских долларов (HK$)"
        case .dkk:
            return "Датская крона (kr)"
        case .usd:
            return "Доллар США (US$)"
        case .eur:
            return "Евро (€)"
        case .inr:
            return "Индийских рупий (₹)"
        case .kzt:
            return "Казахстанских тенге (₸)"
        case .cad:
            return "Канадский доллар (CA$)"
        case .kgs:
            return "Киргизских сомов (сом)"
        case .cny:
            return "Китайский юань (¥)"
        case .mdl:
            return "Молдавских леев (L)"
        case .nok:
            return "Норвежских крон (kr.)"
        case .pln:
            return "Польский злотый (zł)"
        case .ron:
            return "Румынский лей (L.)"
        case .xdr:
            return "Cпец. права заимствования (SDR)"
        case .sgd:
            return "Сингапурский доллар (S$)"
        case .tjs:
            return "Таджикских сомони (C.)"
        case .try:
            return "Турецких лир (₺)"
        case .tmt:
            return "Туркменский манат (₼.)"
        case .uzs:
            return "Узбекских сумов (UZS)"
        case .uah:
            return "Украинских гривен (₴)"
        case .czk:
            return "Чешских крон (Kč)"
        case .sek:
            return "Шведских крон (Skr)"
        case .chf:
            return "Швейцарский франк (SFr)"
        case .zar:
            return "Южноафриканских рэндов (R)"
        case .krw:
            return "Вон Республики Корея (₩)"
        case .jpy:
            return "Японских иен (JP¥)"
        }
    }
}

enum Change: String {
    case up = "⬆️"
    case down = "🔻"
}
