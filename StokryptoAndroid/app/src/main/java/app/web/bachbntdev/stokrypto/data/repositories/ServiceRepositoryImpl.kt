package app.web.bachbntdev.stokrypto.data.repositories

import app.web.bachbntdev.stokrypto.data.models.ServiceModel
import app.web.bachbntdev.stokrypto.domain.repositories.ServiceRepository

val favoriteServices = mutableListOf<ServiceModel>(
    ServiceModel(
        id = "1",
        name = "cashIn",
        title = "Nạp tiền",
        subtitle = "Nạp tiền",
        icon = "https://w7.pngwing.com/pngs/972/334/png-transparent-computer-icons-add-logo-desktop-wallpaper-add-thumbnail.png",
        refId = ""
    ), ServiceModel(
        id = "2",
        name = "cashOut",
        title = "Rút tiền",
        subtitle = "Rút tiền",
        icon = "https://w7.pngwing.com/pngs/972/334/png-transparent-computer-icons-add-logo-desktop-wallpaper-add-thumbnail.png",
        refId = ""
    ), ServiceModel(
        id = "3",
        name = "transfer",
        title = "Chuyển tiền",
        subtitle = "Chuyển tiền",
        icon = "https://w7.pngwing.com/pngs/972/334/png-transparent-computer-icons-add-logo-desktop-wallpaper-add-thumbnail.png",
        refId = ""
    )
)

val suggestionServices = mutableListOf<ServiceModel>(
    ServiceModel(
        id = "1",
        name = "P2P",
        title = "Giao dịch P2P",
        subtitle = "Chuyển khoản ngân hàng, chuyển khoản qua ví điện tử...",
        icon = "",
        refId = ""
    ), ServiceModel(
        id = "2",
        name = "P2P",
        title = "Nạp VND",
        subtitle = "Nhiều lựa chọn hình thức thanh toán",
        icon = "",
        refId = ""
    ), ServiceModel(
        id = "3",
        name = "P2P",
        title = "Mua bằng VND",
        subtitle = "Visa, Mastercard",
        icon = "",
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