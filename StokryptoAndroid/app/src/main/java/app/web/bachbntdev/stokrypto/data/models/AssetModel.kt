package app.web.bachbntdev.stokrypto.data.models

import app.web.bachbntdev.stokrypto.domain.entities.Asset

data class AssetModel(
    override val id: String,
    override val symbol: String,
    override val name: String,
    override val price: Double,
    override val volatility: Double,
    override val volatilityPercent: Double,
    override val volume: Double,
    override val type: String,
    override val unit: String
) : Asset
