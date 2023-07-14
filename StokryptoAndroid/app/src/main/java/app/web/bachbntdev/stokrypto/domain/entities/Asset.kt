package app.web.bachbntdev.stokrypto.domain.entities

interface Asset {
    val id: String
    val symbol: String
    val name: String
    val price: Double
    val volatility: Double
    val volatilityPercent: Double
    val volume: Double
    val type: String
    val unit: String
}