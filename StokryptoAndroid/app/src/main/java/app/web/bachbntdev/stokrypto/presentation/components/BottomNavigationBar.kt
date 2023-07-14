package app.web.bachbntdev.stokrypto.presentation.components

import androidx.compose.material.BottomNavigation
import androidx.compose.material.BottomNavigationItem
import androidx.compose.material.Icon
import androidx.compose.material.Text
import androidx.compose.runtime.*
import androidx.compose.ui.res.painterResource
import androidx.navigation.NavController
import androidx.navigation.compose.currentBackStackEntryAsState
import app.web.bachbntdev.stokrypto.R
import app.web.bachbntdev.stokrypto.core.navigation.NavRoute

@Composable
fun BottomNavigationBar(navController: NavController) {
    val navBackStackEntry by navController.currentBackStackEntryAsState()
    val currentRoute = navBackStackEntry?.destination?.route

    BottomNavigation() {
        BottomNavigationItem(selected = currentRoute == NavRoute.Home.path, onClick = {
            if (currentRoute != NavRoute.Home.path) {
                navController.navigate(NavRoute.Home.path) {
                    popUpTo(NavRoute.Home.path) {
                        inclusive = true
                    }
                }
            }
        },
            icon = {
                Icon(
                    painter = painterResource(id = R.drawable.dashboard),
                    contentDescription = NavRoute.Home.path
                )
            },
            label = {
                Text(text = NavRoute.Home.path)
            })
        BottomNavigationItem(selected = currentRoute == NavRoute.Market.path, onClick = {
            if (currentRoute != NavRoute.Market.path) {
                navController.navigate(NavRoute.Market.path) {
                    popUpTo(NavRoute.Market.path) {
                        inclusive = true
                    }
                }
            }
        },
            icon = {
                Icon(
                    painter = painterResource(id = R.drawable.bar_chart),
                    contentDescription = NavRoute.Market.path
                )
            },
            label = {
                Text(text = NavRoute.Market.path)
            })
        BottomNavigationItem(selected = currentRoute == NavRoute.Trading.path, onClick = {
            if (currentRoute != NavRoute.Trading.path) {
                navController.navigate(NavRoute.Trading.path) {
                    popUpTo(NavRoute.Trading.path) {
                        inclusive = true
                    }
                }
            }
        },
            icon = {
                Icon(
                    painter = painterResource(id = R.drawable.attach_money),
                    contentDescription = NavRoute.Trading.path
                )
            },
            label = {
                Text(text = NavRoute.Trading.path)
            })
        BottomNavigationItem(selected = currentRoute == NavRoute.Asset.path, onClick = {
            if (currentRoute != NavRoute.Asset.path) {
                navController.navigate(NavRoute.Asset.path) {
                    popUpTo(NavRoute.Asset.path) {
                        inclusive = true
                    }
                }
            }
        },
            icon = {
                Icon(
                    painter = painterResource(id = R.drawable.wallet),
                    contentDescription = NavRoute.Asset.path
                )
            },
            label = {
                Text(text = NavRoute.Asset.path)
            })
        BottomNavigationItem(selected = currentRoute == NavRoute.Other.path, onClick = {
            if (currentRoute != NavRoute.Other.path) {
                navController.navigate(NavRoute.Other.path) {
                    popUpTo(NavRoute.Other.path) {
                        inclusive = true
                    }
                }
            }
        },
            icon = {
                Icon(
                    painter = painterResource(id = R.drawable.view_list),
                    contentDescription = NavRoute.Other.path
                )
            },
            label = {
                Text(text = NavRoute.Other.path)
            })
    }
}