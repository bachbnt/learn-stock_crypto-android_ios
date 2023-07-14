package app.web.bachbntdev.stokrypto.domain.repositories

import app.web.bachbntdev.stokrypto.domain.entities.Asset

abstract class AssetRepository {
    abstract fun getAssets(type: String): List<Asset>;
    abstract fun getStocks(): List<Asset>;
    abstract fun getCryptos(): List<Asset>;
}