Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000)
	end
end)

object = {}

local PropsCivil = {
    {label = "Chaise", props = "apa_mp_h_din_chair_12"},
    {label = "Carton", props = "prop_cardbordbox_04a"},
    {label = "Sac", props = "prop_cs_heist_bag_02"},
    {label = "Table 1", props = "prop_rub_table_02"},
    {label = "Table 2", props = "prop_table_04"},
    {label = "Table 3", props = "bkr_prop_weed_table_01b"},
    {label = "Petite Chaise", props = "bkr_prop_clubhouse_chair_01"},
    {label = "Ordinateur", props = "bkr_prop_clubhouse_laptop_01a"},
    {label = "Chaise Bureau", props = "bkr_prop_clubhouse_offchair_01a"},
    {label = "Lit Bunker", props = "gr_prop_bunker_bed_01"},
    {label = "Lit Biker", props = "gr_prop_gr_campbed_01"},
    {label = "Chaise Peche", props = "hei_prop_hei_skid_chair"},
}

local PropsLSPD = {
    {label = "Cone", props = "prop_roadcone02a"},
    {label = "Barrière", props = "prop_barrier_work05"},
    {label = "Gros carton", props = "prop_boxpile_07d"},
    {label = "Herse", props = "p_ld_stinger_s"},
}

local PropsEMS = {
    {label = "Sac mortuaire", props = "xm_prop_body_bag"},
    {label = "Trousse médical 1", props = "xm_prop_smug_crate_s_medical"},
    {label = "Trousse médical 2", props = "xm_prop_x17_bag_med_01a"},
}

local PropsMecano = {
    {label = "Outils", props = "prop_cs_trolley_01"},
    {label = "Outils mecano", props = "prop_carcreeper"},
    {label = "Sac à outils", props = "prop_cs_heist_bag_02"},
}

local PropsGang = {
    {label = "Chaise", props = "bkr_prop_weed_chair_01a"},
    {label = "Sac pour arme", props = "prop_gun_case_01"},
    {label = "Cash", props = "hei_prop_cash_crate_half_full"},
    {label = "Valise de cash", props = "prop_cash_case_02"},
    {label = "Petite pile de cash", props = "prop_cash_crate_01"},
    {label = "Poubelle", props = "prop_cs_dumpster_01a"},
    {label = "Canapé", props = "v_tre_sofa_mess_c_s"},
    {label = "Canapé 2", props = "v_res_tre_sofa_mess_a"},
    {label = "Pile de cash", props = "bkr_prop_bkr_cashpile_04"},
    {label = "Pile de cash 2", props = "bkr_prop_bkr_cashpile_05"},
}

local PropsArmes = {
    {label = "Malette Armes", props = "bkr_prop_biker_gcase_s"},
    {label = "Caisse Batteuses", props = "ex_office_swag_guns04"},
    {label = "Caisse Armes", props = "ex_prop_crate_ammo_bc"},
    {label = "Caisse Batteuses 2", props = "ex_prop_crate_ammo_sc"},
    {label = "Caisse Fermé", props = "ex_prop_adv_case_sm_03"},
    {label = "Petite Caisse", props = "ex_prop_adv_case_sm_flash"},
    {label = "Caisse Explosif", props = "ex_prop_crate_expl_bc"},
    {label = "Caisse Vetements", props = "ex_prop_crate_expl_sc"},
    {label = "Caisse Chargeurs", props = "gr_prop_gr_crate_mag_01a"},
    {label = "Grosse Caisse Armes", props = "gr_prop_gr_crates_rifles_01a"},
    {label = "Grosse Caisse Armes 2", props = "gr_prop_gr_crates_weapon_mix_01a"},
}

local PropsDrugs = {
    {label = "Cocaine Block", props = "bkr_prop_coke_block_01a"},
    {label = "Cocaine Pallet", props = "bkr_prop_coke_pallet_01a"},
    {label = "Balance Cocaine", props = "bkr_prop_coke_scale_01"},
    {label = "Spatule Cocaine", props = "bkr_prop_coke_spatula_04"},
    {label = "Table Cocaine", props = "bkr_prop_coke_table01a"},
    {label = "Caisse", props = "bkr_prop_crate_set_01a"},
    {label = "Palette Weed", props = "bkr_prop_fertiliser_pallet_01a"},
    {label = "Palette 1", props = "bkr_prop_fertiliser_pallet_01b"},
    {label = "Palette 2", props = "bkr_prop_fertiliser_pallet_01c"},
    {label = "Palette 3", props = "bkr_prop_fertiliser_pallet_01d"},
    {label = "Acetone Meth", props = "bkr_prop_meth_acetone"},
    {label = "Bidon Meth", props = "bkr_prop_meth_ammonia"},
    {label = "Bac Meth", props = "bkr_prop_meth_bigbag_01a"},
    {label = "Bac Meth 2", props = "bkr_prop_meth_bigbag_02a"},
    {label = "Bac Meth 3", props = "bkr_prop_meth_bigbag_03a"},
    {label = "Lithium Meth", props = "bkr_prop_meth_lithium"},
    {label = "Phosphorus Meth", props = "bkr_prop_meth_phosphorus"},
    {label = "Pseudoephedrine", props = "bkr_prop_meth_pseudoephedrine"},
    {label = "Meth Smash", props = "bkr_prop_meth_smashedtray_01"},
    {label = "Machine a sous", props = "bkr_prop_money_counter"},
    {label = "Pot Weed", props = "bkr_prop_weed_01_small_01b"},
    {label = "Packet Weed", props = "bkr_prop_weed_bigbag_03a"},
    {label = "Packet Weed Ouvert", props = "bkr_prop_weed_bigbag_open_01a"},
    {label = "Pot Weed 2", props = "bkr_prop_weed_bucket_01d"},
    {label = "Weed", props = "bkr_prop_weed_drying_01a"},
    {label = "Weed Plante", props = "bkr_prop_weed_lrg_01b"},
    {label = "Weed Plante 2", props = "bkr_prop_weed_med_01b"},
    {label = "Table Weed", props = "bkr_prop_weed_drying_01a"},
    {label = "Weed Pallet", props = "hei_prop_heist_weed_pallet"},
    {label = "Coke", props = "imp_prop_impexp_boxcoke_01"},
    {label = "Coke en bouteille", props = "bkr_prop_coke_bottle_01a"},
    {label = "Coke coupé", props = "bkr_prop_coke_cut_01"},
    {label = "Bol de coke", props = "bkr_prop_coke_fullmetalbowl_02"},
    {label = "Prop meth", props = "bkr_prop_meth_pseudoephedrine"},
    {label = "Sac de meth ouvert", props = "bkr_prop_meth_openbag_01a"},
    {label = "Gros sac de meth", props = "bkr_prop_meth_bigbag_04a"},
    {label = "Gros sac de weed", props = "bkr_prop_weed_bigbag_03a"},
    {label = "Weed plante", props = "bkr_prop_weed_01_small_01a"},
    {label = "Weed", props = "bkr_prop_weed_dry_02b"},
    {label = "Table de weed", props = "bkr_prop_weed_table_01a"},
    {label = "Block de coke", props = "bkr_prop_coke_block_01a"},
}

local open = false 
local mainMenu = RageUI.CreateMenu("Menu Props", "Rodeo Scripts")
local subMenu = RageUI.CreateSubMenu(mainMenu, "Props Civil", "Rodeo Scripts")
local lspd = RageUI.CreateSubMenu(mainMenu, "Props LSPD", "Rodeo Scripts")
local ems = RageUI.CreateSubMenu(mainMenu, "Props EMS", "Rodeo Scripts")
local mecano = RageUI.CreateSubMenu(mainMenu, "Props Mécano", "Rodeo Scripts")
local gang = RageUI.CreateSubMenu(mainMenu, "Props Gang", "Rodeo Scripts")
local armes = RageUI.CreateSubMenu(mainMenu, "Props Armes", "Rodeo Scripts")
local drugs = RageUI.CreateSubMenu(mainMenu, "Props Drugs", "Rodeo Scripts")
local suppr = RageUI.CreateSubMenu(mainMenu, "Suppression", "Rodeo Scripts")
mainMenu:SetRectangleBanner(60, 0, 165, 255)
subMenu:SetRectangleBanner(60, 0, 165, 255)
lspd:SetRectangleBanner(60, 0, 165, 255)
ems:SetRectangleBanner(60, 0, 165, 255)
mecano:SetRectangleBanner(60, 0, 165, 255)
gang:SetRectangleBanner(60, 0, 165, 255)
armes:SetRectangleBanner(60, 0, 165, 255)
drugs:SetRectangleBanner(60, 0, 165, 255)
suppr:SetRectangleBanner(60, 0, 165, 255)
mainMenu.Closed = function()
    open = false 
end

function OpenMenuProps()
    if open then 
		open = false
		RageUI.Visible(mainMenu, false)
		return
	else
		open = true 
		RageUI.Visible(mainMenu, true)
		CreateThread(function()
		while open do 
			RageUI.IsVisible(mainMenu,function() 
                DisableControlAction(0, 22, true)
                DisableControlAction(0, 21, true)
                DisableControlAction(0, 37, true) -- Select Weapon
                DisableControlAction(0, 47, true)  -- Disable weapon

                
                DisableControlAction(0, 24, true) -- Attack
                DisableControlAction(0, 257, true) -- Attack 2
                DisableControlAction(0, 25, true) -- Aim
                DisableControlAction(0, 263, true) -- Melee Attack 1

                RageUI.Button("Civil", nil, {RightLabel = "→→→"}, true, {
                    onSelected = function() 
                    end
                }, subMenu)

                RageUI.Button("LSPD", nil, {RightLabel = "→→→"}, true, {
                    onSelected = function() 
                    end
                }, lspd)

                RageUI.Button("EMS", nil, {RightLabel = "→→→"}, true, {
                    onSelected = function() 
                    end
                }, ems)

                RageUI.Button("Mécano", nil, {RightLabel = "→→→"}, true, {
                    onSelected = function() 
                    end
                }, mecano)

                RageUI.Button("Gang", nil, {RightLabel = "→→→"}, true, {
                    onSelected = function() 
                    end
                }, gang)

                RageUI.Button("Armes", nil, {RightLabel = "→→→"}, true, {
                    onSelected = function() 
                    end
                }, armes)

                RageUI.Button("Drogues", nil, {RightLabel = "→→→"}, true, {
                    onSelected = function() 
                    end
                }, drugs)

                RageUI.Button("Suppression d'objets", nil, {RightLabel = "XXX"}, true, {
                    onSelected = function() 
                    end
                }, suppr)

		   	end)

               RageUI.IsVisible(subMenu, function()

                    for k,v in pairs(PropsCivil) do
                        RageUI.Button(v.label, "Appuyer sur [~g~E~w~] pour poser les objet", {RightLabel = "→"}, true, {
                            onSelected = function() 
                                SpawnObj(v.props)
                            end
            
                        })
                    end

               end)

               RageUI.IsVisible(lspd, function()

                    for k,v in pairs(PropsLSPD) do
                        RageUI.Button(v.label, "Appuyer sur [~g~E~w~] pour poser les objet", {RightLabel = "→"}, true, {
                            onSelected = function() 
                                SpawnObj(v.props)
                            end
                        })
                    end
               end)

               RageUI.IsVisible(ems, function()

                    for k,v in pairs(PropsEMS) do
                        RageUI.Button(v.label, "Appuyer sur [~g~E~w~] pour poser les objet", {RightLabel = "→"}, true, {
                            onSelected = function() 
                                SpawnObj(v.props)
                            end
                        })
                    end
                end)

                RageUI.IsVisible(mecano, function()

                    for k,v in pairs(PropsMecano) do
                        RageUI.Button(v.label, "Appuyer sur [~g~E~w~] pour poser les objet", {RightLabel = "→"}, true, {
                            onSelected = function() 
                                SpawnObj(v.props)
                            end
                        })
                    end
                end)

                RageUI.IsVisible(gang, function()

                    for k,v in pairs(PropsGang) do
                        RageUI.Button(v.label, "Appuyer sur [~g~E~w~] pour poser les objet", {RightLabel = "→"}, true, {
                            onSelected = function() 
                                SpawnObj(v.props)
                            end
                        })
                    end
                end)

                RageUI.IsVisible(armes, function()

                    for k,v in pairs(PropsArmes) do
                        RageUI.Button(v.label, "Appuyer sur [~g~E~w~] pour poser les objet", {RightLabel = "→"}, true, {
                            onSelected = function() 
                                SpawnObj(v.props)
                            end
                        })
                    end
                end)

                RageUI.IsVisible(drugs, function()

                    for k,v in pairs(PropsDrugs) do
                        RageUI.Button(v.label, "Appuyer sur [~g~E~w~] pour poser les objet", {RightLabel = "→"}, true, {
                            onSelected = function() 
                                SpawnObj(v.props)
                            end
                        })
                    end
                end)

               RageUI.IsVisible(suppr, function()

                    for k,v in pairs(object) do
                        if GoodName(GetEntityModel(NetworkGetEntityFromNetworkId(v))) == 0 then table.remove(object, k) end
                        RageUI.Button("Object: "..GoodName(GetEntityModel(NetworkGetEntityFromNetworkId(v))).." ["..v.."]", nil, {RightLabel = ""}, true, {
                            onActive = function()
                                local entity = NetworkGetEntityFromNetworkId(v)
                                local ObjCoords = GetEntityCoords(entity)
                                DrawMarker(0, ObjCoords.x, ObjCoords.y, ObjCoords.z+1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.3, 0.3, 0, 255, 0, 170, 1, 0, 2, 1, nil, nil, 0)
                            end,
                            onSelected = function() 
                                RemoveObj(v, k)
                            end,
                        })
                    end

                end)

		Wait(0)
		end
		end)
  	end
end

RegisterCommand("props", function()
    OpenMenuProps()
end)