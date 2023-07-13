package app.web.bachbntdev.stokrypto.domain.repositories

import app.web.bachbntdev.stokrypto.domain.entities.Service

abstract class ServiceRepository {
    abstract fun getServices(type: String): List<Service>;
}