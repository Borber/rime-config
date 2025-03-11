local jj_switch = {}

function jj_switch.func(key, env)
    if key:release() then
        return 2
    end

    local context = env.engine.context

    if key:repr() == "Return" and context.input == "jj" then
        context:clear()
        context:set_option("ascii_mode", true)
        return 1
    end

    return 2
end

return jj_switch