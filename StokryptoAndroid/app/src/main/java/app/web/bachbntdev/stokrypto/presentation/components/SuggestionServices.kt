package app.web.bachbntdev.stokrypto.presentation.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.Button
import androidx.compose.material.ButtonColors
import androidx.compose.material.ButtonDefaults
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import app.web.bachbntdev.stokrypto.data.models.ServiceModel
import app.web.bachbntdev.stokrypto.data.repositories.suggestionServices

@Composable
fun SuggestionServices(data: MutableList<ServiceModel>) {
    LazyRow(
        modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween,

        ) {
        items(data) { item ->
            Box(
                modifier = Modifier
                    .width(100.dp)
                    .height(100.dp)
                    .clip(RoundedCornerShape(10.dp))
                    .background(Color.Gray)
                    .padding(8.dp)
                    .clickable {

                    }
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(text = item.title)
                    Text(text = item.subtitle)
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun SuggestionServicesPreview() {
    SuggestionServices(suggestionServices)
}