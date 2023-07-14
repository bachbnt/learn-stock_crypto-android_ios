package app.web.bachbntdev.stokrypto.core.navigation

sealed class NavRoute(val path: String) {
    object Home : NavRoute("home")
    object Market : NavRoute("market")
    object Trading : NavRoute("trading")
    object Asset : NavRoute("asset")
    object Other : NavRoute("other")

    fun withArgs(vararg args: String): String {
        return buildString {
            append(path)
            args.forEach { arg ->
                append("/$arg")
            }
        }
    }
}