(setq *basederegles*
      '(
        
        ;;R?gles sur l'IMC et la corpulence
        (R1 ((< IMC 16.5) (eq corpulence ectomorphe)) (eq condition_physique insuffisance_ponderale_severe))
        (R2 ((>= IMC 16.5)(< IMC 18.5)(eq corpulence ectomorphe)) (eq condition_physique insuffisance_ponderale_legere))
        (R3 ((>= IMC 18.5)(< IMC 25)) (eq condition_physique normale))
        (R4 ((>= IMC 25)(< IMC 30)(eq corpulence endomorphe)) (eq condition_physique surpoids))
        (R5 ((>= IMC 25)(< IMC 30)(eq corpulence mesomorphe)) (eq condition_physique athletique))
        (R6 ((>= IMC 30)(< IMC 35)(eq corpulence endormorphe)) (eq condition_physique obesite_moderee))
        (R7 ((>= IMC 30)(< IMC 35)(eq corpulence mesomorphe)) (eq condition_physique muscle))
        (R8 ((>= IMC 35)(< IMC 40)(eq corpulence endormorphe)) (eq condition_physique obesite_severe))
        (R9 ((>= IMC 35)(< IMC 40)(eq corpulence mesomorphe)) (eq condition_physique tres_muscle))
        (R10 ((>= IMC 40)(eq corpulence endormorphe)) (eq condition_physique obseite_morbide))
        
        ;;R?gles sur la sant? de l'utilisateur
        (R11 ((eq sante mauvais)) (eq potentiel_sportif 1))
        (R12 ((eq sante moyen)) (eq potentiel_sportif 2))
        (R13 ((eq sante bon) (eq condition_physique insuffisance_ponderale_severe)) (eq potentiel_sportif 1))
        (R14 ((eq sante bon) (eq condition_physique insuffisance_ponderale_legere)) (eq potentiel_sportif 3))
        (R15 ((eq sante bon) (eq condition_physique muscle)) (eq potentiel_sportif 5))
        (R300 ((eq sante bon) (eq condition_physique tres_muscle)) (eq potentiel_sportif 5))
        (R16 ((eq sante bon) (eq condition_physique obesite_moderee)) (eq potentiel_sportif 2))
        (R17 ((eq sante bon) (eq condition_physique obesite_severe)) (eq potentiel_sportif 1))
        (R18 ((eq sante bon) (eq condition_physique obesite_morbide)) (eq potentiel_sportif 1))
        
        ;;R?gles sur sa motivation et son exp?rience
        (R19 ((eq sante bon) (eq condition_physique surpoids) (eq motivation faible)) (eq potentiel_sportif 2))
        (R20 ((eq sante bon) (eq condition_physique normale) (eq motivation faible)) (eq potentiel_sportif 2))
        (R21 ((eq sante bon) (eq condition_physique athletique) (eq motivation faible)) (eq potentiel_sportif 2))
        (R22 ((eq sante bon) (eq condition_physique surpoids) (eq motivation elevee) (eq experience aucune)) (eq potentiel_sportif 3))
        (R23 ((eq sante bon) (eq condition_physique normale) (eq motivation elevee) (eq experience aucune)) (eq potentiel_sportif 3))
        (R24 ((eq sante bon) (eq condition_physique athletique) (eq motivation elevee) (eq experience aucune)) (eq potentiel_sportif 3))
        (R25 ((eq sante bon) (eq condition_physique surpoids) (eq motivation elevee) (eq experience moderee)) (eq potentiel_sportif 3))
        (R26 ((eq sante bon) (eq condition_physique normale) (eq motivation elevee) (eq experience moderee)) (eq potentiel_sportif 4))
        (R27 ((eq sante bon) (eq condition_physique athletique) (eq motivation elevee) (eq experience moderee)) (eq potentiel_sportif 5))
        (R28 ((eq sante bon) (eq condition_physique surpoids) (eq motivation elevee) (eq experience forte)) (eq potentiel_sportif 4))
        (R29 ((eq sante bon) (eq condition_physique normale) (eq motivation elevee) (eq experience forte)) (eq potentiel_sportif 5))
        (R30 ((eq sante bon) (eq condition_physique athletique) (eq motivation elevee) (eq experience forte)) (eq potentiel_sportif 5))
        
        ;;R?gles sur l'?ge de l'individu
        (R31 ((> age 60)(< age 80) (>eq potentiel_sportif 2)) (- potentiel_sportif 1))
        (R32 ((> age 80)(> potentiel_sportif 2)) (- potentiel_sportif 2))
        (R33 ((> age 80)(eq potentiel_sportif 2)) (eq potentiel_sportif 1))
        (R34 ((> age 15)(< age 35) (< potentiel_sportif 5)) (+ potentiel_sportif 1))
        
        ;;R?gles pour les fonceurs
        (R35 ((eq temp fonceur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport yoga))
        (R36 ((eq temp fonceur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport tennis_de_table))
        (R37 ((eq temp fonceur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport squash))
        (R38 ((eq temp fonceur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport boxe))
        (R39 ((eq temp fonceur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport musculation))
        (R40 ((eq temp fonceur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport marche))
        (R41 ((eq temp fonceur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport skateboard))
        (R42 ((eq temp fonceur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport cyclisme))
        (R43 ((eq temp fonceur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport athletisme))
        (R44 ((eq temp fonceur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport trail))
        (R45 ((eq temp fonceur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport danse))
        (R46 ((eq temp fonceur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport gymnastique))
        (R47 ((eq temp fonceur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport volleyball))
        (R48 ((eq temp fonceur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport basketball))
        (R49 ((eq temp fonceur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport handball))
        (R50 ((eq temp fonceur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport croquet))
        (R51 ((eq temp fonceur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport beach_volley))
        (R52 ((eq temp fonceur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport ultimate_frisbee))
        (R53 ((eq temp fonceur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport football))
        (R54 ((eq temp fonceur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport rugby))
        
        ;;R?gles pour les timides
        (R55 ((eq temp timide)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport tai_chi))
        (R56 ((eq temp timide)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport tennis_de_table))
        (R57 ((eq temp timide)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport badminton))
        (R58 ((eq temp timide)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport padel))
        (R59 ((eq temp timide)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport musculation))
        (R60 ((eq temp timide)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport randonnee))
        (R61 ((eq temp timide)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport jogging))
        (R62 ((eq temp timide)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport plongee))
        (R63 ((eq temp timide)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport athletisme))
        (R64 ((eq temp timide)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport triathlon))
        (R65 ((eq temp timide)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport fitness))
        (R66 ((eq temp timide)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport danse))
        (R67 ((eq temp timide)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport volleyball))
        (R68 ((eq temp timide)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport futsal))
        (R69 ((eq temp timide)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport handball))
        (R70 ((eq temp timide)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport randonnee))
        (R71 ((eq temp timide)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport baseball))
        (R72 ((eq temp timide)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport hockey_sur_glasse))
        (R73 ((eq temp timide)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport football))
        (R74 ((eq temp timide)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport rugby))
        
        ;;R?gles pour les extravertis
        (R75 ((eq temp extraverti)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport qi_gong))
        (R76 ((eq temp extraverti)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport escrime))
        (R77 ((eq temp extraverti)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport karate))
        (R78 ((eq temp extraverti)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport gymnastique))
        (R79 ((eq temp extraverti)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport judo))
        (R80 ((eq temp extraverti)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport stretching))
        (R81 ((eq temp extraverti)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport golf))
        (R82 ((eq temp extraverti)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport tennis))
        (R83 ((eq temp extraverti)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport kayak))
        (R84 ((eq temp extraverti)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport triathlon))
        (R85 ((eq temp extraverti)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport aerobic))
        (R86 ((eq temp extraverti)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport danse))
        (R87 ((eq temp extraverti)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport cheerleading))
        (R88 ((eq temp extraverti)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport natation_synchronisee))
        (R89 ((eq temp extraverti)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport squash))
        (R90 ((eq temp extraverti)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport croquet))
        (R91 ((eq temp extraverti)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport baseball))
        (R92 ((eq temp extraverti)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport hockey_sur_gazon))
        (R93 ((eq temp extraverti)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport football))
        (R94 ((eq temp extraverti)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport football_americain))
        
        ;;R?gles pour les comp?titeurs
        (R95 ((eq temp competiteur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport flechette))
        (R96 ((eq temp competiteur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport tennis_de_table))
        (R97 ((eq temp competiteur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport escrime))
        (R98 ((eq temp competiteur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport krav_maga))
        (R99 ((eq temp competiteur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport boxe))
        (R100 ((eq temp competiteur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport petanque))
        (R101 ((eq temp competiteur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport tir_a_la_carabine))
        (R102 ((eq temp competiteur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport cyclisme))
        (R103 ((eq temp competiteur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport tennis))
        (R104 ((eq temp competiteur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport triathlon))
        (R105 ((eq temp competiteur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport aerobic))
        (R106 ((eq temp competiteur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport crossfit))
        (R107 ((eq temp competiteur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport badminton))
        (R108 ((eq temp competiteur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport lutte_en_equipe))
        (R109 ((eq temp competiteur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport taekwondo_en_equipe))
        (R110 ((eq temp competiteur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport petanque))
        (R111 ((eq temp competiteur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport cyclisme_en_grp))
        (R112 ((eq temp competiteur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport padel))
        (R113 ((eq temp competiteur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport rugby))
        (R114 ((eq temp competiteur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport football_americain))
        
        ;;R?gles pour ceux qui n'ont peur de rien
        (R115 ((eq temp pas_peur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport qi_gong))
        (R116 ((eq temp pas_peur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport patinage))
        (R117 ((eq temp pas_peur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport saut_a_la_perche))
        (R118 ((eq temp pas_peur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport karting))
        (R119 ((eq temp pas_peur)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport karate))
        (R120 ((eq temp pas_peur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport skateboard))
        (R121 ((eq temp pas_peur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport snowboard))
        (R122 ((eq temp pas_peur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport escalade))
        (R123 ((eq temp pas_peur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport parachute))
        (R124 ((eq temp pas_peur)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport formule_4))
        (R125 ((eq temp pas_peur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport aerobic))
        (R126 ((eq temp pas_peur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport natation_synchronisee))
        (R127 ((eq temp pas_peur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport water_polo))
        (R128 ((eq temp pas_peur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport hockey_sur_glace))
        (R129 ((eq temp pas_peur)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport hockey_sur_glace))
        (R130 ((eq temp pas_peur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport randonnee_en_grp))
        (R131 ((eq temp pas_peur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport canyoning))
        (R132 ((eq temp pas_peur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport deltaplane))
        (R133 ((eq temp pas_peur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport rugby))
        (R134 ((eq temp pas_peur)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport football_americain))
        
        ;;R?gles pour les turbulent
        (R135 ((eq temp turbulent)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport yoga))
        (R136 ((eq temp turbulent)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport natation))
        (R137 ((eq temp turbulent)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport judo))
        (R138 ((eq temp turbulent)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport boxe))
        (R139 ((eq temp turbulent)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport crossfit))
        (R140 ((eq temp turbulent)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport marche))
        (R141 ((eq temp turbulent)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport jogging))
        (R142 ((eq temp turbulent)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport cyclisme))
        (R143 ((eq temp turbulent)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport tennis))
        (R144 ((eq temp turbulent)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport trail))
        (R145 ((eq temp turbulent)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport aerobic))
        (R146 ((eq temp turbulent)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport fitness))
        (R147 ((eq temp turbulent)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport lutte))
        (R148 ((eq temp turbulent)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport futsal))
        (R149 ((eq temp turbulent)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport basketball))
        (R150 ((eq temp turbulent)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport marche_nordique))
        (R151 ((eq temp turbulent)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport course))
        (R152 ((eq temp turbulent)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport football))
        (R153 ((eq temp turbulent)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport rugby))
        (R154 ((eq temp turbulent)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport football_americain))
        
        ;;R?gles pour ceux qui aiment la nature
        (R155 ((eq temp nature)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport yoga))
        (R156 ((eq temp nature)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport patinage))
        (R157 ((eq temp nature)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport plongee))
        (R158 ((eq temp nature)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport surf_en_salle))
        (R159 ((eq temp nature)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport natation))
        (R160 ((eq temp nature)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport tir_a_l_arc))
        (R161 ((eq temp nature)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport randonnee))
        (R162 ((eq temp nature)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport equitation))
        (R163 ((eq temp nature)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport snowboard))
        (R164 ((eq temp nature)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport trail))
        (R165 ((eq temp nature)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport aquagym))
        (R166 ((eq temp nature)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport curling))
        (R167 ((eq temp nature)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport natation))
        (R168 ((eq temp nature)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport hockey_sur_glace))
        (R169 ((eq temp nature)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport water_polo))
        (R170 ((eq temp nature)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport randonnee_en_grp))
        (R171 ((eq temp nature)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport voile))
        (R172 ((eq temp nature)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport beach_volley))
        (R173 ((eq temp nature)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport VTT_en_grp))
        (R174 ((eq temp nature)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport aviron))
        
        ;;R?gles pour les gens calmes
        (R175 ((eq temp calme)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport yoga))
        (R176 ((eq temp calme)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport bowling))
        (R177 ((eq temp calme)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport tai_chi))
        (R178 ((eq temp calme)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport qi_gong))
        (R179 ((eq temp calme)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport natation))
        (R180 ((eq temp calme)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport petanque))
        (R181 ((eq temp calme)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport marche))
        (R182 ((eq temp calme)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport cyclisme))
        (R183 ((eq temp calme)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport peche))
        (R184 ((eq temp calme)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport golf))
        (R185 ((eq temp calme)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport aquagym))
        (R186 ((eq temp calme)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport zumba))
        (R187 ((eq temp calme)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport plongee))
        (R188 ((eq temp calme)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport hip_hop))
        (R189 ((eq temp calme)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport fitness))
        (R190 ((eq temp calme)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport petanque))
        (R191 ((eq temp calme)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport randonnee_en_grp))
        (R192 ((eq temp calme)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport croquet))
        (R193 ((eq temp calme)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport aviron))
        (R194 ((eq temp calme)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport canyoning))
        
        ;;R?gles pour les gens stress?s
        (R195 ((eq temp stresse)(eq type individuel)(eq env interieur)(eq potentiel_sportif 1))(eq sport yoga))
        (R196 ((eq temp stresse)(eq type individuel)(eq env interieur)(eq potentiel_sportif 2))(eq sport bowling))
        (R197 ((eq temp stresse)(eq type individuel)(eq env interieur)(eq potentiel_sportif 3))(eq sport tai_chi))
        (R198 ((eq temp stresse)(eq type individuel)(eq env interieur)(eq potentiel_sportif 4))(eq sport qi_gong))
        (R199 ((eq temp stresse)(eq type individuel)(eq env interieur)(eq potentiel_sportif 5))(eq sport natation))
        (R200 ((eq temp stresse)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 1))(eq sport petanque))
        (R201 ((eq temp stresse)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 2))(eq sport marche))
        (R202 ((eq temp stresse)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 3))(eq sport cyclisme))
        (R203 ((eq temp stresse)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 4))(eq sport peche))
        (R204 ((eq temp stresse)(eq type individuel)(eq env exterieur)(eq potentiel_sportif 5))(eq sport golf))
        (R205 ((eq temp stresse)(eq type collectif)(eq env interieur)(eq potentiel_sportif 1))(eq sport aquagym))
        (R206 ((eq temp stresse)(eq type collectif)(eq env interieur)(eq potentiel_sportif 2))(eq sport zumba))
        (R207 ((eq temp stresse)(eq type collectif)(eq env interieur)(eq potentiel_sportif 3))(eq sport plongee))
        (R208 ((eq temp stresse)(eq type collectif)(eq env interieur)(eq potentiel_sportif 4))(eq sport hip_hop))
        (R209 ((eq temp stresse)(eq type collectif)(eq env interieur)(eq potentiel_sportif 5))(eq sport fitness))
        (R210 ((eq temp stresse)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 1))(eq sport petanque))
        (R211 ((eq temp stresse)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 2))(eq sport randonnee_en_grp))
        (R212 ((eq temp stresse)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 3))(eq sport croquet))
        (R213 ((eq temp stresse)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 4))(eq sport aviron))
        (R214 ((eq temp stresse)(eq type collectif)(eq env exterieur)(eq potentiel_sportif 5))(eq sport canyoning))
      
       )
      )

(setq *basedefaits* '((IMC 30)(corpulence mesomorphe)(sante bon)(motivation elevee)(experience forte)
                      (temp competiteur)(type collectif)(env exterieur))
      )

;;Fonction qui donne la conclusion de la r?gle mis en argument
(defun cclRegle (regle) (caddr regle))
(cclRegle (assoc 'R213 *basederegles*))

;;Fonction qui donne les pr?misses de la r?gle mis en argument
(defun premisseRegle (regle) (cadr regle))
(premisseRegle (assoc 'R213 *basederegles*))

;;Fonction qui donne le num?ro de la r?gle mis en argument
(defun numRegle (regle) (car regle))
(numRegle (assoc 'R213 *basederegles*))

;;Fonction qui d?termine si un fait appartient bien ? la base de fait
(defun appartient (but bdf)  
  (let ((valeur (cadr (assoc (cadr but) bdf))))
	(if valeur
    	(funcall (car but) valeur (caddr but)))))

(appartient '(eq motivation faible) *basedefaits*)

;;Fonction qui donne les r?gles candidates du but mis en argument
(defun regles_candidates (but bdr)
  (if bdr
  	(let* ((conclusion (cclRegle (car bdr)))
         	(attribut (cadr conclusion))
         	(valeur (caddr conclusion)))
    	(if
      	(and
      	(eq attribut (cadr but))  ;; on v?rifie si l'attribut est le m?me
      	(funcall (car but) valeur (caddr but))) ;; et que la regle concluera sur une valeur correcte
        	;;dans ce cas :
        	(cons (car bdr) (regles_candidates but (cdr bdr)))
        	;; sinon
      	(regles_candidates but (cdr bdr)))
    	)
	)
  )

(regles_candidates '(eq sport aviron) *basederegles*)


;;-------------------------------------------------------------------------------------
;;------------------------------ CHAINAGE ARRIERE -------------------------------------
;;-------------------------------------------------------------------------------------
;;(en profondeur)

(defun verifier_ou (but bdF bdR &optional (i 0)) ;; on regarde si le but est verifiee par les faits de la BDF
 
  (if (appartient but bdF) ;; si le fait appartient ? la base de fait, il est prouv?
  	(progn
    	;;(format t "~V@t But : ~A proof ~%" i but)
    	T)
	;; sinon, on regarde l'ensemble de ces r?gles candidates
	(let ((regles (reverse (regles_candidates but bdR))) (ok nil))
 	;;pour chaque de ses r?gles candidates et tant que le fait n'a pas ?t? prouv?
  	(while (and regles (not ok))
   	;;(format t "~% ~V@t VERIFIE_OU ~A Regles ~s :  ~A ~%" i but (numRegle (car regles)) (car regles))
   	;;on v?rifie la r?gle : tous les ?l?ments de la pr?misse
   	(setq ok (verifier_et (pop regles) bdF bdR i)))
 	ok)
	))

(defun verifier_et (regle bdF bdR i) ;; on regarde si tous les ?l?ments de la pr?misse sont v?rifi?s
  (let ((ok t) (premisses (premisseRegle regle)))
	;; pour chaque ?lement de la premisse et tant que les ?l?ments sont v?rifi?s
	(while (and premisses ok)
  	;;(format t "~V@t  ~t VERIFIE_ET ~s premisse ~A~%" (+ 1 i) (numRegle regle) (car premisses))
  	(setq ok (verifier_ou (pop premisses) bdF bdR (+ 6 i))))
    ok)
  )

(verifier_ou '(eq sport rugby) *baseDefaits* *baseDeRegles*)
(verifier_ou '(eq sport football_americain) *baseDefaits* *baseDeRegles*)

;;---------------------------------------------------------------------------------------------------------
;;---------------------------------------------------------------------------------------------------------
;;-------------------------------Chainage arriere sans questions utilisateur-------------------------------
;;---------------------------------------------------------------------------------------------------------
;;---------------------------------------------------------------------------------------------------------

(defun chainage-arriere2 (but bdf bdR)
      (progn
  (format t "~%~%---------------------------------------------------------------------------")
  (format t "~%------------------Vous avez lance le chainage-arriere----------------------")
    (format t "~%---------------------------------------------------------------------------")
    (format t "~%------------Decouvrez si vous etes compatible avec un sport !--------------")
        (format t "~%---------------------------------------------------------------------------")
        (format t "~%~%Le chainage teste votre compatibilite avec le sport ~s." (caddr but))
    (if (verifier_ou but bdF bdr)
        (format t "~%~%LE CHAINAGE A TROUVE UNE COMPATIBILITE ! ~%~%")
      (format t "~%~%LE CHAINAGE N'A PAS TROUVE DE COMPATIBILITE... ~%~%")
      )
    )
  )

;;bdf pour obtenir compatibilite avec football_americain
;;(setq *basedefaits* '((IMC 30)(corpulence mesomorphe)(sante bon)(motivation elevee)(experience forte)
;;(temp competiteur)(type collectif)(env exterieur)))

(chainage-arriere2 '(eq sport football_americain) *baseDefaits* *baseDeRegles*)
(chainage-arriere2 '(eq sport rugby) *baseDefaits* *baseDeRegles*)


;;---------------------------------------------------------------------------------------------------------
;;---------------------------------------------------------------------------------------------------------
;;-------------------------------Chainage arriere avec questions utilisateur-------------------------------
;;---------------------------------------------------------------------------------------------------------
;;---------------------------------------------------------------------------------------------------------

(defun chainage-arriere ()
  (let ((bdf NIL) (rep NIL) (imc 0) (taille 0) (poids 0) (age 0) (corp NIL))
      (progn
  (format t "~%~%---------------------------------------------------------------------------")
  (format t "~%------------------Vous avez lance le chainage-arriere----------------------")
    (format t "~%---------------------------------------------------------------------------")
    (format t "~%------------Decouvrez si vous etes compatible avec un sport !--------------")
    (format t "~%---------------------------------------------------------------------------")
        
        (format t "~%~%Connaissez vous la valeur de votre IMC ? (OUI ou NON) : ")
        (setq rep (read))
        (if (equal rep 'OUI)
            (progn
            (while (or (not (numberp imc))(<= imc 0))
              (format t "Veuillez saisir votre IMC : ")
              (setq imc (read)))
              (push (list 'IMC imc) bdf)
              (format t "~%")
            )
          (progn
            (format t "~%Ce n'est pas grave, calculons le !~%")
            (while (or (not (numberp taille)) (<= taille 0))
              (format t "~%Quel est votre taille (en m) : ")
              (setq taille (read))
              (format t "~%"))
            (while (or (not (numberp poids)) (<= poids 0))
              (format t "Quel est votre poids (en kg) : ")
              (setq poids (read))
              (format t "~%"))
            (setq imc (/ poids (* taille taille)))
            (push (list 'IMC imc) bdf)
            )
          )
    (while (or (not (numberp age)) (<= age 0))
           (format t "~%Quelle est votre age ? : ")
           (setq age (read))
           (format t "~%"))
        (push (list 'AGE age) bdf)
        
        (while (and (not (equal rep 'BON)) (not (equal rep 'MOYEN)) (not (equal rep 'MAUVAIS)))
           (format t "~%Quel est votre niveau de sant? ? MAUVAIS, MOYEN, BON : ")
           (setq rep (read))
           (format t "~%"))
        (push (list 'SANTE rep) bdf)
        
    (format t "~%Veuillez saisir votre corpulence ~%")
        (format t "~%Il existe trois morphotypes : ~%")
        (format t "Ectomorphe (ossature fine, personne mince, peu muscl?e) - souvent appel? skinny ~%")
        (format t "M?somorphe (plut?t athl?tique) ~%")
        (format t "Endomorphe (pourcentage ?lev? de graisse corporelle) ~%")
        (while (or (and (not (equal corp 'ECTOMORPHE)) (not (equal corp 'MESOMORPHE)) (not (equal corp 'ENDOMORPHE))) (not ok))
          (format t "~%Saisir ECTOMORPHE, MESOMORPHE ou ENDOMORPHE : ")
          (setq corp (read))
          (if (or (equal corp 'ECTOMORPHE) (equal corp 'MESOMORPHE) (equal corp 'ENDOMORPHE)) 
              (setq ok t)(format t "Donnee mal orthographi?e ou ?ronn?e~%"))
          
          (if (assoc 'IMC bdf)
          (progn
            (if (and (equal corp 'ECTOMORPHE) (> (cadr (assoc 'IMC bdf)) 25))
                (progn
                (format t "Votre IMC semble ne pas convenir avec la corpulence annonc?e : saisir une donn?e coh?rente~%")
                (setq ok NIL)
                ))
            (if (and (equal corp 'MESOMORPHE) (< (cadr (assoc 'IMC bdf)) 25))
                (progn
                (format t "Votre IMC semble ne pas convenir avec la corpulence annonc?e : saisir une donn?e coh?rente~%")
                (setq ok NIL)
                ))
            (if (and (equal corp 'MESOMORPHE) (>= (cadr (assoc 'IMC bdf)) 40))
                (progn
                (format t "Votre IMC semble ne pas convenir avec la corpulence annonc?e : saisir une donn?e coh?rente~%")
                (setq ok NIL)
                ))
            (if (and (equal corp 'ENDOMORPHE) (< (cadr (assoc 'IMC bdf)) 25))
                (progn
                (format t "Votre IMC semble ne pas convenir avec la corpulence annonc?e : saisir une donn?e coh?rente~%")
                (setq ok NIL)
                  ))
            
            ))
          )
        (push (list 'CORPULENCE corp) bdf)
        
    (while (and (not (equal rep 'ELEVEE)) (not (equal rep 'FAIBLE)))
            (format t "~%Quelle est votre niveau de motivation ? ELEVEE ou FAIBLE : ")
            (setq rep (read))
            (format t "~%"))
        (push (list 'MOTIVATION rep) bdf)
        
    (while (and (not (equal rep 'FORTE)) (not (equal rep 'AUCUNE))(not (equal rep 'MODEREE)))
           (format t "~%Quelle est votre niveau d'experience ? AUCUNE, MODEREE ou FORTE : ")
            (setq rep (read))
            (format t "~%"))
        (push (list 'EXPERIENCE rep) bdf)
        
    (while (and (not (equal rep 'FONCEUR)) (not (equal rep 'TIMIDE))(not (equal rep 'EXTRAVERTI))(not (equal rep 'COMPETITEUR))(not (equal rep 'PAS_PEUR))(not (equal rep 'TURBULENT))(not (equal rep 'NATURE))(not (equal rep 'CALME))(not (equal rep 'STRESSE)))
           (format t "~%Quel est votre temp?rament ?~%FONCEUR~%EXTRAVERTI~%TIMIDE~%COMPETITEUR~%PAS_PEUR (vous n'avez peur de rien)~%TURBULENT~%NATURE (amoureux de la nature)~%CALME~%STRESSE~%Temp?rament : ")
            (setq rep (read))
            (format t "~%"))
        (push (list 'TEMP rep) bdf)
        
    (while (and (not (equal rep 'INDIVIDUEL)) (not (equal rep 'COLLECTIF)))
           (format t "~%Quel type de sport pr?f?rez-vous ? INDIVIDUEL ou COLLECTIF : ")
            (setq rep (read))
            (format t "~%"))
        (push (list 'TYPE rep) bdf)
        
    (while (and (not (equal rep 'INTERIEUR)) (not (equal rep 'EXTERIEUR)))
           (format t "~%Quel environnement pr?f?rez-vous ? INTERIEUR ou EXTERIEUR : ")
            (setq rep (read))
            (format t "~%"))
        (push (list 'ENV rep) bdf)
        
    (format t "~%Avec quel sport voulez-vous tester votre compatibilite ?")
        (setq but (read))
        
    (if (verifier_ou (list 'eq 'sport but) bdF *basederegles*)
        (format t "~%~%LE CHAINAGE A TROUVE UNE COMPATIBILITE ! ~%~%")
      (format t "~%~%LE CHAINAGE N'A PAS TROUVE DE COMPATIBILITE... ~%~%")
      )
    )
    )
  )

(chainage-arriere)