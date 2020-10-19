--状态数组
Unit = {
State = {}, --状态
Param = {},	--参数
}

--初始化状态机
Unit.State.Name = ""

--状态机
function ProcessState(stateTable, stateName, stateParam)
    if stateTable[stateName] ~= nil then
        return stateTable[stateName](stateParam)
    end    
    lineprint("没有找到["..stateName.."]")
    return "Error"
end

--启动状态机
function Main()
    --调用状态机 
    Unit.State.Name = ProcessState(Unit.State,Unit.State.Name,Unit.Param[Unit.State.Name])
    sleep(50)
end

--创建任务
function Task(name,par,fun)    
    if fun then
        Unit.Param[name]=par
        Unit.Param[name]["name"]=name 
        Unit.State[name]=fun
    else        
        Unit.Param[name]={}
        Unit.Param[name]["name"]=name 
        Unit.State[name]=par
    end
end

--设置状态机的入口
function Run(name)
    Unit.State.Name = name	
end

