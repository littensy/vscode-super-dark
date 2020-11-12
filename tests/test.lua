

-- Comment!

local Instance = {}
Instance.__index = Instance


function Instance.new()
    
    local self = setmetatable({
        Name = "Hello!\n";
    }, Instance)

    Instance.Name = "Bruh"
    self:Destroy()

    self.Bruh:Connect(function()
        
    end)
    
    print(self.Name.e)

    if (true or false or nil) then
        print("Hello, world!")
    end

    return self

end


xpcall(function()
    print("I ran!")
    error("Catch!")
end, function(err)
    local obj = Instance.new()
    obj:Destroy()
    print("Caught '" .. err + 1 .. "'")
end)