fun main(args: Array<String>) {
    println("Hello, world!")

    for (i in 1..100){
        if ( i%15 == 0) {
            println("FizzBuzz")}
        else if(i%5 == 0) {
            println("Buzz")}
        else if(i%3 == 0){
            println("Fizz")}
        else {
            println(i)
        }

    }
}

fun foo(bar: Any?) {
    // TEST
    // TEST
    // TEST
    val x1 = bar as String
    /*
     * TEST
     * TEST
     * TEST
     * TEST
     * TEST
     * TEST
     * TEST
     */
    val test = fool as String
    // TEST
    val y2 = bar as String
    // TEST
    val z3 = bar as String
    // TEST
    // TEST
    val abc = bar as String
}
