#! /usr/bin/env julia

#= multi-line comments look like
this, according to the book...
however, vim doesn't colour them right =#

# vim also doesn't colour this triple-quote right.
greeting = """Hello, what's your "name"? """

# here we define a function called namePlace
function namePlace()
    print(greeting)     # no $ needed outside a string
    name = readline()
    println("Great to meet you, $name.")
    print("Where are you from? ")
    place = readline()
    println("Ah, I've never been to $place.")
end

# What is a namePlace? Apparently, you can't typeof a function!
typeofnp = typeof(namePlace)
println("We have defined `namePlace`, a $(typeofnp).")

# and at the end, we invoke it
namePlace()
