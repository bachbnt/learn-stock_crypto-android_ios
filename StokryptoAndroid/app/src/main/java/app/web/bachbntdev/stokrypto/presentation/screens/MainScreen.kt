package app.web.bachbntdev.stokrypto.presentation.screens

import androidx.compose.foundation.layout.padding
import androidx.compose.material.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import app.web.bachbntdev.stokrypto.core.navigation.NavRoute
import app.web.bachbntdev.stokrypto.presentation.components.BottomNavigationBar

@Composable
fun MainScreen() {
    val navController = rememberNavController()

    Scaffold(bottomBar = {
        BottomNavigationBar(navController = navController)
    }) { paddingsValues ->
        NavHost(
            modifier = Modifier.padding(bottom = paddingsValues.calculateBottomPadding()),
            navController = navController,
            startDestination = NavRoute.Home.path
        ) {
            this.composable(NavRoute.Home.path) {
                HomeScreen()
            }
            this.composable(NavRoute.Market.path) {
                MarketScreen()
            }
            this.composable(NavRoute.Trading.path) {
                TradingScreen()
            }
            this.composable(NavRoute.Asset.path) {
                AssetScreen()
            }
            this.composable(NavRoute.Other.path) {
                OtherScreen()
            }
        }
    }
}