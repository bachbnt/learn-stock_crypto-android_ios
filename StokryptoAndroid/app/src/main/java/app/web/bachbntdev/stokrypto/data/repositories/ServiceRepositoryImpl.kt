package app.web.bachbntdev.stokrypto.data.repositories

import app.web.bachbntdev.stokrypto.R
import app.web.bachbntdev.stokrypto.data.models.ServiceModel
import app.web.bachbntdev.stokrypto.domain.repositories.ServiceRepository

val favoriteServices = mutableListOf<ServiceModel>(
    ServiceModel(
        id = "1",
        name = "cashIn",
        title = "Nạp tiền",
        subtitle = "Nạp tiền",
        icon = R.drawable.download,
        refId = ""
    ), ServiceModel(
        id = "2",
        name = "cashOut",
        title = "Rút tiền",
        subtitle = "Rút tiền",
        icon = R.drawable.upload,
        refId = ""
    ), ServiceModel(
        id = "3",
        name = "transfer",
        title = "Chuyển tiền",
        subtitle = "Chuyển tiền",
        icon = R.drawable.swap_horiz,
        refId = ""
    ),
    ServiceModel(
        "add",
        name = "add",
        title = "Thêm",
        refId = "",
        icon = R.drawable.edit_note
    )
)

val suggestionServices = mutableListOf<ServiceModel>(
    ServiceModel(
        id = "1",
        name = "P2P",
        title = "Giao dịch P2P",
        subtitle = "Chuyển khoản ngân hàng, chuyển khoản qua ví điện tử...",
        icon = 0,
        refId = ""
    ), ServiceModel(
        id = "2",
        name = "P2P",
        title = "Nạp VND",
        subtitle = "Nhiều lựa chọn hình thức thanh toán",
        icon = 0,
        refId = ""
    ), ServiceModel(
        id = "3",
        name = "P2P",
        title = "Mua bằng VND",
        subtitle = "Visa, Mastercard",
        icon = 0,
        refId = ""
    )
)

class ServiceRepositoryImpl : ServiceRepository() {
    override fun getServices(type: String): MutableList<ServiceModel> {
        if (type == "favorite") {
            return favoriteServices;
        }
        if (type == "suggestion") {
            return suggestionServices;
        }
        return mutableListOf();
    }
}