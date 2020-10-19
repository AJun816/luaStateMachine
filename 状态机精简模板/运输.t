Task("运输",{str = "正在运输本月的商品",x = 10,y = 20,z = 100},
function (str)
    lineprint(str.str..str.x..str.y..str.z)
    lineprint("运输已经结束，正在进入仓库任务")
    lineprint("=============================================")
    return "仓库"
end
)