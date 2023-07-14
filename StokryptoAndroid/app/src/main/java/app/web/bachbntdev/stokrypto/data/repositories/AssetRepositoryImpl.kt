package app.web.bachbntdev.stokrypto.data.repositories

import app.web.bachbntdev.stokrypto.data.models.AssetModel
import app.web.bachbntdev.stokrypto.domain.repositories.AssetRepository

val stocks = mutableListOf<AssetModel>(
    AssetModel(
        id = "1",
        symbol = "SSI",
        name = "Công ty cổ phần chứng khoán SSI",
        price = 28.1,
        volatility = 0.3,
        volatilityPercent = 1.1,
        volume = 5972900.0,
        type = "stock",
        unit = "VND"
    ),
    AssetModel(
        id = "2",
        symbol = "STB",
        name = "Ngân hàng thương mại cổ phần Sài Gòn Thương Tín",
        price = 29.2,
        volatility = -0.8,
        volatilityPercent = -2.8,
        volume = 15510000.0,
        type = "stock",
        unit = "VND"
    ),
    AssetModel(
        id = "3",
        symbol = "HPG",
        name = "Công ty cổ phần tập đoàn Hoà Phát",
        price = 27.0,
        volatility = 0.0,
        volatilityPercent = 0.0,
        volume = 8100000.0,
        type = "stock",
        unit = "VND"
    )
)

val cryptos = mutableListOf<AssetModel>(
    AssetModel(
        id = "1",
        symbol = "BTC",
        name = "Bitcoin",
        price = 31341243.33,
        volatility = 900000.0,
        volatilityPercent = 3.2,
        volume = 609070.0,
        type = "crypto",
        unit = "USD"
    ),
    AssetModel(
        id = "2",
        symbol = "ETH",
        name = "Etherum",
        price = 2006.59,
        volatility = 200.08,
        volatilityPercent = 7.27,
        volume = 241200.0,
        type = "crypto",
        unit = "USD"
    ),
    AssetModel(
        id = "3",
        symbol = "BNB",
        name = "BNB",
        price = 258.85,
        volatility = 12.0,
        volatilityPercent = 6.03,
        volume = 40380.0,
        type = "crypto",
        unit = "USD"
    )
)

class AssetRepositoryImpl : AssetRepository() {
    override fun getAssets(type: String): MutableList<AssetModel> {
        if (type == "stock") {
            return stocks;
        }
        if (type == "crypto") {
            return cryptos;
        }
        return mutableListOf();
    }

    override fun getStocks(): MutableList<AssetModel> {
        return getAssets("stock");
    }

    override fun getCryptos(): MutableList<AssetModel> {
        return getAssets("crypto");
    }
}
