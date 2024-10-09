﻿
ClassStrategyCO = {};
ClassStrategyNC = {};

function InitializeStrategy()
	ClassStrategyCO = {
		[1] = {"grind","activités autonomes","Lorsque le robot n'a pas de cible dans la bataille, il recherchera la cible dans son champ de vision et attaquera."},
		[2] = {"attack weak","attaque gratuite","Le robot choisira librement la cible à attaquer pendant la bataille."},
		[3] = {"attack force","passif agressif","Le robot ne choisira pas la cible pendant la bataille, vous devrez spécifier manuellement la cible à attaquer."},
		[4] = {"tank","Attrapez un seul monstre","Le robot ne tire qu'un seul monstre, et après l'avoir tué, il tire le suivant."},
		[5] = {"tank aoe","Capturez plusieurs monstres","Tous les monstres de la bataille sont des cibles que le robot doit tirer."},
		[6] = {"tank assist","assistance au char","Le robot aide à attaquer la cible actuelle du personnage tank de l'équipe."},
		[7] = {"dps","DPS unique","Le robot ne produit qu'un seul monstre, puis produit le monstre suivant après l'avoir tué."},
		[8] = {"dps aoe","Groupe AOE","Quand le robot a beaucoup de monstres dans la bataille，Utilisera la sortie des compétences AOE."},
		[9] = {"dps assist","Aide DPS","Le robot aide à détruire les monstres de l'équipe."},
		[10] = {"dps debuff","BUFF DE Dégâts","Le robot lancera des dégâts continus BUFF sur la cible pendant la bataille."},
		[11] = {"heal","Guérir ses coéquipiers","Le robot soignera ses coéquipiers blessés pendant le combat et n'effectuera plus de sortie DPS."},
		[12] = {"aoe","attaque de groupe","Les robots utilisent des compétences de dégâts de groupe pendant le combat."},
		[13] = {"flee","distance","Un robot tentera de s'éloigner de sa cible actuelle pendant le combat."},
		[14] = {"fire","sort de feu","Le robot utilise des sorts de feu pour infliger des dégâts à la cible pendant le combat. (pour les robots mages)"},
		[15] = {"fire aoe","AOE de feu","Lorsqu'il y a de nombreux monstres dans la bataille, le robot utilisera la sortie de sorts de feu AOE. (pour les robots mages)"},
		[16] = {"frost","sort de gel","Le robot utilise des sorts de givre pour infliger des dégâts à la cible pendant le combat. (pour les robots mages)"},
		[17] = {"frost aoe","AOE de givre","Lorsqu'il y a beaucoup de monstres dans la bataille, le robot utilisera la sortie du sort Frost AOE. (pour les robots mages)"},
		[18] = {"arcane","sorts arcaniques","Le robot utilise des sorts arcaniques pour envoyer un signal à la cible pendant le combat. (pour les robots mages)"},
		[19] = {"threat","contrôle de la haine","Le robot utilisera une puissance conservatrice pendant la bataille pour empêcher les OT."},
		[20] = {"conserve mana","contrôle de l'énergie","Les robots utiliseront leur mana avec parcimonie et réduiront leurs capacités de production pendant le combat."},
		[21] = {"shadow","sort d'ombre","Les robots utilisent des sorts d'ombre pour infliger des dégâts aux cibles pendant le combat. (Pour les robots Démoniste et Prêtre)"},
		[22] = {"shadow aoe","AOE de l'Ombre","Lorsqu'il y a de nombreux monstres dans la bataille, le robot utilisera la sortie du sort Ombre AOE. (Pour les robots Démoniste et Prêtre)"},
		[23] = {"shadow debuff","Buff de dégâts d'Ombre","Le robot projettera un BUFF de dégâts continus sur la cible pendant la bataille. (Pour les robots Démonisteet Prêtre)"},
		[24] = {"melee","combat rapproché","Le robot se rapproche toujours de la cible pour attaquer pendant la bataille. (pour les robots chamanes)"},
		[25] = {"melee aoe","Attaque en groupe rapproché","Les robots s'approchent de la cible pendant le combat et effectuent des attaques de groupe. (pour les robots chamanes)"},
		[26] = {"rshadow","Aura de résistance à l'ombre","Le robot active l'aura de résistance à l'ombre pendant le combat. (pour les robots Paladin)"},
		[27] = {"rfrost","Aura de résistance au gel","Le robot active l'aura de résistance au gel pendant le combat. (pour les robots Paladin)"},
		[28] = {"rfire","Aura de résistance au feu","Le robot active l'aura de résistance au feu pendant le combat. (pour les robots Paladin)"},
		[29] = {"barmor","Aura de défense d'armure","Le robot active l'aura de défense blindée pendant le combat. (pour les robots Paladin)"},
		[30] = {"bspeed","aura de vitesse de monture","Le robot active l'aura de vitesse de la monture pendant le combat. (pour les robots Paladin)"},
		[31] = {"rnature","Aura de résistance naturelle","Le robot active l'aura de résistance naturelle pendant le combat. (pour les robots chasseurs)"},
		[32] = {"bhealth","BUFF de vie","Le robot fournit des BUFF qui augmentent la vie de lui-même et de ses coéquipiers pendant la bataille."},
		[33] = {"bmana","BUFF auxiliaire","Le robot fournit des BUFF auxiliaires pour lui-même et ses coéquipiers pendant la bataille."},
		[34] = {"bdps","BUFF Offensif","Les robots gagnent des BUFF offensifs pour eux-mêmes et leurs coéquipiers pendant le combat."},
		[35] = {"bear","Formes d'ours","Le robot se transforme en ours pendant la bataille pour effectuer une sortie DPS. (pour les robots druides)"},
		[36] = {"cat","Forme de guépard","Le robot se transforme en guépard pendant la bataille pour effectuer une sortie DPS. (pour les robots druides)"},
		[37] = {"cat aoe","Attaque de groupe de guépards","Le robot se transforme en guépard pendant la bataille pour effectuer une sortie de groupe. (pour les robots druides)"},
		[38] = {"caster","Sortie de sorts à distance","Les robots utilisent des sorts à distance pour sortir pendant le combat. (pour les druides et les robots chamans)"},
		[39] = {"caster aoe","Sort de groupe à distance","Lorsqu'il y a de nombreux monstres dans la bataille, le robot utilise des sorts AOE à distance pour la sortie. (pour les druides et les robots chamans)"},
		[40] = {"caster debuff","Buff de dégâts à distance","Le robot lancera un BUFF de dégâts continus à longue portée sur la cible pendant le combat. (pour les druides et les robots chamans)"},
		[41] = {"totems","totem","Le robot placera des totems autour de lui pendant la bataille. (pour les robots chamanes)"},
		[42] = {"loot","ramasser","Pendant le combat, les robots ramassent et déposent des cadavres autour d'eux."},
		[43] = {"naxx","Naxxramas","Le comportement du bot sera spécifique aux instances Naxxramas. (Uniquement valable dans le donjon Naxxramas)"},
	};

	ClassStrategyNC = {
		[1] = {"grind","activités autonomes","Lorsqu'il n'est pas en combat, le robot recherche des cibles à attaquer dans son champ de vision."},
		[2] = {"move random","Se déplacer au hasard","Lorsqu'il n'est pas en combat, le robot court au hasard lorsqu'il s'ennuie."},
		[3] = {"attack weak","attaque faible","Lorsqu'il n'est pas en combat, le robot peut choisir librement la cible à attaquer lorsqu'il entre en combat."},
		[4] = {"attack force","passif agressif","Lorsqu'il n'est pas en combat, le robot n'effectuera aucune attaque et vous devez spécifier manuellement la cible de l'attaque."},
		[5] = {"bhealth","BUFF de vie","Lorsqu'il n'est pas en combat, le robot se donnera, ainsi qu'à ses coéquipiers, des BUFF augmentant la vie."},
		[6] = {"bmana","BUFF auxiliaire","Lorsqu'il n'est pas en combat, le robot fournira des BUFF auxiliaires à lui-même et à ses coéquipiers."},
		[7] = {"bdps","BUFF Offensif","Lorsqu'il n'est pas en combat, le robot ajoutera des BUFF offensifs à lui-même et à ses coéquipiers."},
		[8] = {"emote","expression","Lorsqu'il n'est pas en combat, le robot fera des expressions faciales de temps en temps lorsqu'il s'ennuie."},
		[9] = {"food","repos","Après avoir quitté la bataille, le robot se donne de l'eau et du pain selon la situation."},
		[10] = {"loot","ramasser","Après avoir quitté le combat, le robot ramassera les cadavres environnants et les déposera."},
		[11] = {"stay","rester","Lorsqu'il n'est pas en combat, le robot reste immobile."},
		[12] = {"follow","suivre","Lorsqu'il n'est pas en combat, le robot suit le joueur."},
		[13] = {"quest","Tâche","Lorsqu'il n'est pas en combat, le robot acceptera et accomplira des tâches pour le PNJ avec lequel le joueur interagit actuellement."},
		[14] = {"naxx","Naxxramas","Le comportement du bot sera spécifique aux instances Naxxramas. (Uniquement valable dans le donjon Naxxramas)"},
	};
end
