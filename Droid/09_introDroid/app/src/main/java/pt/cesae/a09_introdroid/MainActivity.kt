package pt.cesae.a09_introdroid

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import pt.cesae.a09_introdroid.ui.theme._09_introDroidTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {

            Text(
                text = "Hello Mundo!",
                fontSize = 50.sp,
                fontWeight = FontWeight.Bold,
                color = Color.White,

                modifier = Modifier
                    .background(Color.Red)
                    .padding(25.dp)
                    //.background(Color.Magenta)
            )


        }
    }
}