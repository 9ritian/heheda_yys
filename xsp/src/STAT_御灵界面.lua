----------------御灵界面-----------------
御灵界面={to神兽界面}

function 御灵界面.to神兽界面()
	for i=1,5 do
		if 操作.或识别({标识.御灵界面1, 标识.御灵界面2}) then
			break
		elseif i==5 then
			return 执行任务.重新识别()
		end
		mSleep(300*参数.延时倍数)
	end
	sysLog('当前位置：御灵面板')
	
	if 参数.御灵目标=='神龙' then
		操作.点击按钮(按钮.御灵界面_神龙按钮)
	elseif 参数.御灵目标=='白藏主' then
		操作.点击按钮(按钮.御灵界面_白藏主按钮)
	elseif 参数.御灵目标=='黑豹' then
		操作.点击按钮(按钮.御灵界面_黑豹按钮)
	elseif 参数.御灵目标=='孔雀' then
		操作.点击按钮(按钮.御灵界面_孔雀按钮)
	end
	mSleep(300)
	return 御灵界面.Next()
	
end
