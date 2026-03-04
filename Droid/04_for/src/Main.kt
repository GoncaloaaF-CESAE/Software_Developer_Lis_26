//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
fun main() {

    val r1 = 0..10

    for (elm in r1) {
        print("$elm ")
    }

    println()

    for (elm in 0..100 step 10) {
        print("$elm ")
    }

    println()

    for (elm in 'a'.. 't') {
        print("$elm ")
    }

    println()

    /*
    var lst = "aa".."bb"
    for (elm in lst) {
        print("$elm ")
    }
    */


    for (elm in 'a'..'Z') {
        print("$elm ")
    }
    println()
    for (elm in 'A'..'z') {
        print("$elm ")
    }

    println()
    for (elm in '0'..'z') {
        print("$elm ")
    }


    println()

    for (elm in 1 until 10) {
        print("$elm ")
    }

    println()

    for (elm in 10 downTo 1) {
        print("$elm ")
    }

}