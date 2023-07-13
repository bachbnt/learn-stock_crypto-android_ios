package app.web.bachbntdev.stokrypto.presentation.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccountBox
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import app.web.bachbntdev.stokrypto.data.models.ServiceModel
import app.web.bachbntdev.stokrypto.data.repositories.favoriteServices

@Composable
fun FavoriteServices(data: MutableList<ServiceModel>) {
    data.add(
        ServiceModel(
            "add",
            name = "add",
            title = "Thêm",
            refId = "",
            icon = "https://w7.pngwing.com/pngs/972/334/png-transparent-computer-icons-add-logo-desktop-wallpaper-add-thumbnail.png"
        )
    )

    LazyRow(
        modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween
    ) {
        items(data) { item ->
            Column {
                Column(
                    modifier = Modifier.clickable {

                    },
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Box(
                        modifier = Modifier
                            .clip(CircleShape)
                            .background(Color.Gray)
                            .padding(8.dp)
                    ) {
                        Icon(imageVector = Icons.Filled.AccountBox, contentDescription = "icon")
                    }
                    Text(text = item.title)
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun FavoriteServicesPreview() {
    FavoriteServices(favoriteServices)
}