ClassStrategyCO = {};
ClassStrategyNC = {};

function InitializeStrategy()
	ClassStrategyCO = {
		[1] = {"grind","Grind","Le robot recherche et attaque automatiquement les cibles dans son champ de vision lorsqu'il n'est pas en combat."},
		[2] = {"attack weak","Attack Weak","Le robot choisit librement ses cibles pendant le combat."},
		[3] = {"attack force","Attack Force","Le robot n'attaque que les cibles que vous lui désignez manuellement."},
		[4] = {"tank","Tank","Le robot ne provoque qu'un monstre à la fois et passe au suivant une fois celui-ci vaincu."},
		[5] = {"tank aoe","Tank AOE","Le robot maintient l'aggro sur tous les monstres en combat."},
		[6] = {"tank assist","Tank Assist","Le robot aide à maintenir l'aggro sur la cible actuelle du tank principal."},
		[7] = {"dps","DPS","Le robot se concentre sur un seul monstre à la fois avant de passer au suivant."},
		[8] = {"dps aoe","DPS AOE","Le robot utilise ses compétences de zone lorsqu'il y a plusieurs ennemis."},
		[9] = {"dps assist","DPS Assist","Le robot aide à éliminer les cibles prioritaires de l'équipe."},
		[10] = {"dps debuff","DPS Debuff","Le robot applique des affaiblissements de dégâts sur la cible pendant le combat."},
		[11] = {"heal","Heal","Le robot se concentre sur les soins de l'équipe et ne fait pas de dégâts."},
		[12] = {"aoe","AOE","Le robot privilégie ses compétences de zone pendant le combat."},
		[13] = {"flee","Flee","Le robot tente de garder ses distances avec sa cible actuelle."},
		[14] = {"fire","Fire","Le robot utilise des sorts de feu pour les dégâts (Mage uniquement)."},
		[15] = {"fire aoe","Fire AOE","Le robot utilise des sorts de feu de zone contre plusieurs ennemis (Mage uniquement)."},
		[16] = {"frost","Frost","Le robot utilise des sorts de givre pour les dégâts (Mage uniquement)."},
		[17] = {"frost aoe","Frost AOE","Le robot utilise des sorts de givre de zone contre plusieurs ennemis (Mage uniquement)."},
		[18] = {"arcane","Arcane","Le robot utilise des sorts arcanes pour les dégâts (Mage uniquement)."},
		[19] = {"threat","Threat","Le robot modère ses dégâts pour éviter de dépasser le tank en menace."},
		[20] = {"conserve mana","Conserve Mana","Le robot économise son mana en limitant l'utilisation de ses sorts coûteux."},
		[21] = {"shadow","Shadow","Le robot utilise des sorts d'ombre pour les dégâts (Démoniste et Prêtre uniquement)."},
		[22] = {"shadow aoe","Shadow AOE","Le robot utilise des sorts d'ombre de zone contre plusieurs ennemis (Démoniste et Prêtre uniquement)."},
		[23] = {"shadow debuff","Shadow Debuff","Le robot applique des affaiblissements d'ombre sur la cible (Démoniste et Prêtre uniquement)."},
		[24] = {"melee","Melee","Le robot reste au contact de sa cible pour attaquer (Chaman uniquement)."},
		[25] = {"melee aoe","Melee AOE","Le robot utilise ses attaques de zone au corps à corps (Chaman uniquement)."},
		[26] = {"rshadow","Shadow Resist","Le robot maintient l'aura de résistance à l'ombre (Paladin uniquement)."},
		[27] = {"rfrost","Frost Resist","Le robot maintient l'aura de résistance au givre (Paladin uniquement)."},
		[28] = {"rfire","Fire Resist","Le robot maintient l'aura de résistance au feu (Paladin uniquement)."},
		[29] = {"barmor","Devotion Aura","Le robot maintient l'aura de dévotion pour augmenter l'armure (Paladin uniquement)."},
		[30] = {"bspeed","Crusader Aura","Le robot maintient l'aura de croisade pour augmenter la vitesse (Paladin uniquement)."},
		[31] = {"rnature","Nature Resist","Le robot maintient l'aspect de la nature (Chasseur uniquement)."},
		[32] = {"bhealth","Health Buff","Le robot maintient les améliorations augmentant les points de vie sur l'équipe."},
		[33] = {"bmana","Mana Buff","Le robot maintient les améliorations utilitaires sur l'équipe."},
		[34] = {"bdps","DPS Buff","Le robot maintient les améliorations augmentant les dégâts sur l'équipe."},
		[35] = {"bear","Bear Form","Le robot se transforme en ours pour augmenter ses dégâts (Druide uniquement)."},
		[36] = {"cat","Cat Form","Le robot se transforme en félin pour augmenter ses dégâts (Druide uniquement)."},
		[37] = {"cat aoe","Cat AOE","Le robot utilise ses attaques de zone en forme de félin (Druide uniquement)."},
		[38] = {"caster","Caster","Le robot utilise des sorts à distance pour les dégâts (Druide et Chaman uniquement)."},
		[39] = {"caster aoe","Caster AOE","Le robot utilise des sorts à distance de zone contre plusieurs ennemis (Druide et Chaman uniquement)."},
		[40] = {"caster debuff","Caster Debuff","Le robot applique des affaiblissements à distance sur la cible (Druide et Chaman uniquement)."},
		[41] = {"totems","Totems","Le robot place des totems pour augmenter ses dégâts (Chaman uniquement)."},
		[42] = {"loot","Loot","Le robot ramasse les objets sur les ennemis vaincus."},
		[43] = {"naxx","Naxxramas","Le robot adopte un comportement spécifique pour l'instance de Naxxramas."},
	};

	ClassStrategyNC = {
		[1] = {"grind","Grind","Le robot recherche et attaque automatiquement les cibles dans son champ de vision lorsqu'il n'est pas en combat."},
		[2] = {"move random","Move Random","Le robot se déplace aléatoirement lorsqu'il n'est pas en combat."},
		[3] = {"attack weak","Attack Weak","Le robot choisit librement ses cibles lorsqu'il entre en combat."},
		[4] = {"attack force","Attack Force","Le robot n'attaque que les cibles que vous lui désignez manuellement."},
		[5] = {"bhealth","Health Buff","Le robot maintient les améliorations augmentant les points de vie sur l'équipe."},
		[6] = {"bmana","Mana Buff","Le robot maintient les améliorations utilitaires sur l'équipe."},
		[7] = {"bdps","DPS Buff","Le robot maintient les améliorations augmentant les dégâts sur l'équipe."},
		[8] = {"emote","Emote","Le robot fait des expressions faciales lorsqu'il n'est pas en combat."},
		[9] = {"food","Food","Le robot mange pour se restaurer lorsqu'il n'est pas en combat."},
		[10] = {"loot","Loot","Le robot ramasse les objets sur les ennemis vaincus."},
		[11] = {"stay","Stay","Le robot reste immobile lorsqu'il n'est pas en combat."},
		[12] = {"follow","Follow","Le robot suit le joueur lorsqu'il n'est pas en combat."},
		[13] = {"quest","Quest","Le robot accepte et réalise des quêtes pour le PNJ avec lequel le joueur interagit."},
		[14] = {"naxx","Naxxramas","Le robot adopte un comportement spécifique pour l'instance de Naxxramas."},
	};
end
