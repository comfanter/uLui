-- 消息窗
local MsgBox = LDeclare("MsgBox", LClass("MsgBox"))

function MsgBox:Start()

	print("MsgBox Start")

	self.btn_close = self.gameObject.transform:Find("btn_close"):GetComponent(Button)
	self.btn_close.onClick:AddListener(function()
		LWindowManager.GetInstance():popWindow("MsgBox.prefab")
	end)
end

return MsgBox