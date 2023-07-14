package app.web.bachbntdev.stokrypto.presentation.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import app.web.bachbntdev.stokrypto.data.models.ServiceModel
import app.web.bachbntdev.stokrypto.data.repositories.favoriteServices

@Composable
fun FavoriteServices(data: MutableList<ServiceModel>) {

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
                        Icon(
                            painter = painterResource(id = item.icon),
                            contentDescription = item.id
                        )
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