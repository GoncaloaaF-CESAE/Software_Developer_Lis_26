package pt.cesae.a10_interacaobase

import android.os.Bundle
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

class MainActivity : ComponentActivity() {



    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {

            // const [txt, seTxt] = useState("Ola Mundo") <- react
            // @State var txt = "Ola Mundo" <- Swift

            var txt by remember { mutableStateOf("Ola Mundo") } // <- colocar "Ola Mundo" no estado

            Column(modifier = Modifier.padding(horizontal = 15.dp)) {
                Text(
                    txt,
                    fontSize = 20.sp,
                    modifier = Modifier
                        .padding(vertical = 25.dp)
                        .clickable {
                            Log.d("aula", "clik no txt: ")
                        }
                )

                Button(onClick = {
                    // ação do btn

                    Log.d("aula", "txt: $txt ")
                    txt = "Nova msg"
                    Log.d("aula", "txt: $txt ")

                }) {
                    // Lbl
                    Text("Btn 1")
                }
            }
        }
    }
}


