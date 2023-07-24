package app.web.bachbntdev.stokrypto.data.models

import app.web.bachbntdev.stokrypto.domain.entities.Service

data class ServiceModel(
    override val id: String,
    override val name: String,
    override val icon: Int,
    override val title: String,
    override val subtitle: String = "",
    override val refId: String
) : Service