#! /usr/bin/env julia

using Printf # we need this for the @printf, apparently

const InterestRate = 3.5
const years = 25

function repay()
    print("How much did you borrow? ")
    principal = parse(Float64, readline())
    sumRemaining = principal
    print("How much can you pay off per year? ")
    sumToRepay = parse(Float64, readline())
    y = years   # disgusting, but until I figure out scope...
    while (y > 0 && sumRemaining > 0)
        y -= 1
        sumRemaining = (sumRemaining - sumToRepay) * (1 + (InterestRate/100))
        @printf("%d\t%6.2f\n", y, sumRemaining)
        if sumRemaining < 0
            println("### Done in $(25 - y) years!")
            break
        end
    end
end

repay()

