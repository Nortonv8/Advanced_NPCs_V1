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