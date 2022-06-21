import Foundation

/*
 URL : https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 13465,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 522,
     "total_market_cap": {
       "btc": 45787014.07943685,
       "eth": 844733598.4803892,
       "ltc": 18072997425.006474,
       "bch": 8089960115.621436,
       "bnb": 4337410706.724312,
       "eos": 991118035685.4515,
       "xrp": 2917785124970.4883,
       "xlm": 8505305015333.068,
       "link": 135653728894.52057,
       "dot": 121633680846.7792,
       "yfi": 185063271.26336268,
       "usd": 969210628298.73,
       "aed": 3560007558804.07,
       "ars": 119865931356562.44,
       "aud": 1389987607310.8542,
       "bdt": 90087270148961.19,
       "bhd": 365427298451.24036,
       "bmd": 969210628298.73,
       "brl": 4983777971774.911,
       "cad": 1252445957838.355,
       "chf": 936670350664.2314,
       "clp": 852420747588736.8,
       "cny": 6483534498004.3545,
       "czk": 22732932207809.586,
       "dkk": 6845700402691.387,
       "eur": 920305229205.405,
       "gbp": 789953184173.6251,
       "hkd": 7608371276889.041,
       "huf": 363056005436200.44,
       "idr": 14379741947285552,
       "ils": 3342560308292.109,
       "inr": 75717284275859.97,
       "jpy": 132284408721952.03,
       "krw": 1252485754595962.2,
       "kwd": 297631984212.3727,
       "lkr": 348924360087125.44,
       "mmk": 1794533143240067.5,
       "mxn": 19530224147127.83,
       "myr": 4262588343257.822,
       "ngn": 402464713401048.4,
       "nok": 9553896847391.918,
       "nzd": 1529521953835.1375,
       "php": 52603905881703.15,
       "pkr": 203711565503761.53,
       "pln": 4266101731785.4043,
       "rub": 51852671692919.14,
       "sar": 3636880499787.585,
       "sek": 9791851625588.059,
       "sgd": 1342647483382.233,
       "thb": 34231550180882.92,
       "try": 16806971015316.666,
       "twd": 28824323116393.676,
       "uah": 28638477947628.023,
       "vef": 97047060211.55188,
       "vnd": 22513604659602404,
       "zar": 15419850333044.316,
       "xdr": 707868797641.7502,
       "xag": 44665112286.625046,
       "xau": 528811010.9060724,
       "bits": 45787014079436.85,
       "sats": 4578701407943685
     },
     "total_volume": {
       "btc": 4057298.655124414,
       "eth": 74853898.24955022,
       "ltc": 1601492248.8574655,
       "bch": 716871037.7177036,
       "bnb": 384348509.74521613,
       "eos": 87825379184.57756,
       "xrp": 258552034927.33163,
       "xlm": 753675759250.5194,
       "link": 12020606778.408195,
       "dot": 10778256229.184954,
       "yfi": 16398906.473942338,
       "usd": 85884110545.107,
       "aed": 315460926443.233,
       "ars": 10621611648326.066,
       "aud": 123170181833.60197,
       "bdt": 7982852067729.888,
       "bhd": 32381401503.485,
       "bmd": 85884110545.107,
       "brl": 441624684833.9958,
       "cad": 110982281822.03546,
       "chf": 83000637417.66585,
       "clp": 75535075224421.94,
       "cny": 574521757491.4933,
       "czk": 2014420401246.5432,
       "dkk": 606614158962.9955,
       "eur": 81550484211.11151,
       "gbp": 69999672531.56854,
       "hkd": 674196279666.8307,
       "huf": 32171275463290.816,
       "idr": 1274223900308010,
       "ils": 296192396821.8855,
       "inr": 6709492676878.614,
       "jpy": 11722043124942.412,
       "krw": 110985808309498.42,
       "kwd": 26373893854.965324,
       "lkr": 30919036005831.914,
       "mmk": 159017945481490.16,
       "mxn": 1730620652155.7627,
       "myr": 377718318177.3812,
       "ngn": 35663376903855.75,
       "nok": 846594031287.3392,
       "nzd": 135534659576.44939,
       "php": 4661360013951.59,
       "pkr": 18051377172526.6,
       "pln": 378029648078.1072,
       "rub": 4594791325752.162,
       "sar": 322272824671.1182,
       "sek": 867679782803.711,
       "sgd": 118975258338.13693,
       "thb": 3033340900342.641,
       "try": 1489306570174.0996,
       "twd": 2554193361727.378,
       "uah": 2537725169414.4644,
       "vef": 8599575988.881569,
       "vnd": 1994985253874214.8,
       "zar": 1366390433539.4897,
       "xdr": 62725975441.28244,
       "xag": 3957884209.201824,
       "xau": 46859229.55451604,
       "bits": 4057298655124.4136,
       "sats": 405729865512441.4
     },
     "market_cap_percentage": {
       "btc": 41.656911645098894,
       "eth": 14.33431412692349,
       "usdt": 6.952446329257725,
       "usdc": 5.764665274588979,
       "bnb": 3.762352254775066,
       "busd": 1.8131824291467875,
       "ada": 1.709222710501183,
       "xrp": 1.6554316773569384,
       "sol": 1.3203728369174468,
       "dot": 0.9242470635426079
     },
     "market_cap_change_percentage_24h_usd": 2.954413140624288,
     "updated_at": 1655837386
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        
        if let item = totalMarketCap.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    // percentage of the total market cap that bitcoin has
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc" }){
            return "\(item.value.asPercentString())"
        }
        
        return ""
    }
}
