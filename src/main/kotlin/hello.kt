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
    val x = bar as String
    /*
     * TEST
     * TEST
     * TEST
     * TEST
     * TEST
     * TEST
     * TEST
     */
    val y = bar as String
    // TEST
    val z = bar as String
}
