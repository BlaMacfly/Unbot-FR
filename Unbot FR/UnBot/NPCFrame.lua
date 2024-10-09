
function NPCCommand_OnEnter(self,tipType,title,text,command)
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
	GameTooltip:AddLine(title,0,0.7,0.7,1);
	if (tipType == 1) then
		GameTooltip:AddLine("Invoque un robot, ce robot est un"..text,0,1,0,1);
		-- GameTooltip:AddLine("En état de non-combat, vous pouvez cliquer avec le bouton droit sur le robot pour ouvrir son menu de fonctionnement.，Définissez ses tâches et son équipement de combat.",0,1,0,1);
		-- GameTooltip:AddLine("Vous devez vous sélectionner avant d'utiliser la commande.",1,0,0,1);
	elseif (tipType == 2) then
		GameTooltip:AddLine(text,0,1,0,1);
		GameTooltip:AddLine("Avant d'utiliser la commande, vous devez vous sélectionner ou sélectionner un robot PNJ.",1,0,0,1);
	end
	-- GameTooltip:AddLine("Cette commande ne peut pas être utilisée en combat.",1,1,1,1);
	-- GameTooltip:AddLine(" ",1,1,1,1);
	if (command ~= nil) then
		GameTooltip:AddDoubleLine("exécuter la commande：",command,0,0.85,0.85,0,0.85,0.85);
	end
	GameTooltip:Show();
end
