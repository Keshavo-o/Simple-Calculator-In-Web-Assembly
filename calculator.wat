(module

    (func $add
        (param $a f64)
        (param $b f64)
        (result f64)

        local.get $a
        local.get $b
        f64.add
    )

    (func $subtract
        (param $a f64)
        (param $b f64)
        (result f64)

        local.get $a
        local.get $b
        f64.sub
    )

    (func $multiply
        (param $a f64)
        (param $b f64)
        (result f64)

        local.get $a
        local.get $b
        f64.mul
    )

    (func $divide
        (param $a f64)
        (param $b f64)
        (result f64)

        local.get $a
        local.get $b
        f64.div
    )

    (func $addMany
        (param $a f64)
        (param $b f64)
        (result f64)

        (local $i i32)
        (local $result f64)

        f64.const 0
        local.set $result

        i32.const 0
        local.set $i

        (loop $loop

            local.get $result
            local.get $a
            local.get $b
            f64.add
            f64.add
            local.set $result

            local.get $i
            i32.const 1
            i32.add
            local.set $i

            local.get $i
            i32.const 1000000
            i32.lt_s
            br_if $loop
        )

        local.get $result
    )

    (export "add" (func $add))
    (export "subtract" (func $subtract))
    (export "multiply" (func $multiply))
    (export "divide" (func $divide))
    (export "addMany" (func $addMany))
)