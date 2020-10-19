function floatwinrun()
    Run("经营")
    if Unit.State.Name ~= nil then
        while true do
            Main()
            sleep(3000)
        end
    else
        lineprint("状态机异常,需要使用Run方法指定入口")
    end
    
end