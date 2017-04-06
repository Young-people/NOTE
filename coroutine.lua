--lua协程
-- coroutine.create()  参数：function ,作用：创建一个co
-- coroutine.yield()   参数：可变参数，

-- resume 如果遇到yield挂起，返回true 和 yield的参数，否则只有true
-- yield 返回下一次resume的参数


function foo(a)
    print("foo", a)--5
    return coroutine.yield(2 * a)
end

co = coroutine.create(function ( a, b )
    print("co-body", a, b)--1，3
    local r, s = coroutine.yield(a + b, a - b)
    print("co-body", a,b)--1，3
    print("yield ret",r,s)--4，7
	r,s = foo(a + 4)
    print("co-body", a,b)--1，3
    print("yield ret",r,s)--8，11
    -- return b, "end"
end)

print("main1", coroutine.resume(co, 1, 3))--true 4 -2
print("main2", coroutine.resume(co, "4", "7"))--true 10
print("main3", coroutine.resume(co, "8","11"))--true
print("main4", coroutine.resume(co, "6", "9"))--无效，co dead
