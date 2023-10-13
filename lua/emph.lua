function Block(el)
    if el.t == "Para" or el.t == "Plain" then
        for x, _ in ipairs(el.content) do

            if el.content[x].t == "Str" and el.content[x].text == "Inga" and
                el.content[x + 1].t == "Space" and el.content[x + 2].t == "Str" and 
                el.content[x + 2].text == "micheliana" then

                local _, e = el.content[x + 2].text:find("micheliana")
                local rest = el.content[x + 2].text:sub(e + 1) -- empty if e+1>length
                el.content[x] = pandoc.Emph {pandoc.Str("Inga micheliana")}
                el.content[x + 1] = pandoc.Str(rest)
                table.remove(el.content, x + 2) -- safe? another way would be to set element k+2 to Str("")
                -- no real need to skip ipairs items here
            end

        end
        
        for k, _ in ipairs(el.content) do

            if el.content[k].t == "Str" and el.content[k].text == "Alchornea" and
                el.content[k + 1].t == "Space" and el.content[k + 2].t == "Str" and 
                el.content[k + 2].text == "latifolia" then

                local _, e = el.content[k + 2].text:find("latifolia")
                local rest = el.content[k + 4].text:sub(e + 1) -- empty if e+1>length
                el.content[k] = pandoc.Emph {pandoc.Str("Alchornea latifolia")}
                el.content[k + 1] = pandoc.Str(rest)
                table.remove(el.content, k + 2) 
            end
        end
         
         for f, _ in ipairs(el.content) do

            if el.content[f].t == "Str" and el.content[f].text == "Azteca" and
                el.content[f + 1].t == "Space" and el.content[f + 2].t == "Str" and 
                el.content[f + 2].text == "sericeasur," then

                local _, e = el.content[f + 2].text:find("sericeasur,")
                local rest = el.content[f + 4].text:sub(e + 1) -- empty if e+1>length
                el.content[f] = pandoc.Emph {pandoc.Str("Azteca sericeasur,")}
                el.content[f + 1] = pandoc.Str(rest)
                table.remove(el.content, f + 2) 
            end
        end
 
            for y, _ in ipairs(el.content) do
                
            if el.content[y].t == "Str" and el.content[y].text == "Tricleocarpa" and
                el.content[y + 1].t == "Space" and el.content[y + 2].t == "Str" and
                el.content[y + 2].text == "cylindrica." then
                    
                local _, e = el.content[y + 2].text:find("cylindrica.")
                local rest = el.content[y + 4].text:sub(e + 1)
                el.content[y] = pandoc.Emph {pandoc.Str("Tricleocarpa cylindrica.")}
                el.content[y + 1] = pandoc.Str(rest)
                table.remove(el.content, y + 2)
            end
        end
            for w, _ in ipairs(el.content) do
                    
                if el.content[w].t == "Str" and el.content[w].text == "(Blighia" and
                el.content[w + 1].t == "Space" and el.content[w + 2].t == "Str" and
                el.content[w + 2].text == "sapida)" then
                    
                local _, e = el.content[w + 2].text:find("sapida)")
                local rest = el.content[w + 4].text:sub(e + 1)
                el.content[w] = pandoc.Emph {pandoc.Str("(Blighia sapida)")}
                el.content[w + 1] = pandoc.Str(rest)
                table.remove(el.content, w + 2)
            end        
        end

    end
    return el
end