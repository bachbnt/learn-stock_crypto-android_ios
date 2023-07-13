package app.web.bachbntdev.stokrypto.presentation.screens

import androidx.compose.foundation.layout.Column
import androidx.compose.runtime.Composable
import androidx.compose.ui.tooling.preview.Preview
import app.web.bachbntdev.stokrypto.data.repositories.ServiceRepositoryImpl
import app.web.bachbntdev.stokrypto.presentation.components.Balance
import app.web.bachbntdev.stokrypto.presentation.components.FavoriteServices
import app.web.bachbntdev.stokrypto.presentation.components.SuggestionServices

@Composable
fun HomeScreen() {
    val repo = ServiceRepositoryImpl();
    Column() {
        Balance(balance = 1000000)
        FavoriteServices(data = repo.getServices("favorite"))
        SuggestionServices(data = repo.getServices("suggestion"))
    }
}

@Preview(showBackground = true)
@Composable
fun HomeScreenPreview() {
    HomeScreen()
}