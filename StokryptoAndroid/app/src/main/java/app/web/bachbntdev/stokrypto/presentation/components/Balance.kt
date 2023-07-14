package app.web.bachbntdev.stokrypto.presentation.components

import android.annotation.SuppressLint
import androidx.compose.foundation.layout.Row
import androidx.compose.material.Icon
import androidx.compose.material.IconButton
import androidx.compose.material.Text
import androidx.compose.material.icons.Icons
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.res.painterResource

@SuppressLint("UnrememberedMutableState")
@Composable
fun Balance(balance: Int) {
    var isVisible = remember { mutableStateOf(false) }

    Row(verticalAlignment = Alignment.CenterVertically) {
        Text(text = if (isVisible.value) "${balance}VND" else "******")
        IconButton(onClick = {
            isVisible.value = !isVisible.value
        }) {
            Icon(
                painter = if (isVisible.value) painterResource(id = app.web.bachbntdev.stokrypto.R.drawable.visibility) else painterResource(
                    id = app.web.bachbntdev.stokrypto.R.drawable.visibility_off
                ),
                contentDescription = "balance"
            )
        }
    }
}