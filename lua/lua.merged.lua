-- Generated by node-lua-distiller(version: 0.2.3)  at Sun Apr 24 2016 17:45:44 GMT+0800 (CST)

---------------------------------------


if __DISTILLER == nil then
  __DISTILLER = nil
  __DISTILLER = {
    FACTORIES = { },
    __nativeRequire = require,
    require = function(id)
      assert(type(id) == "string", "require invalid id:" .. tostring(id))
      if package.loaded[id] then
        return package.loaded[id]
      end
      if __DISTILLER.FACTORIES[id] then
        local func = __DISTILLER.FACTORIES[id]
        package.loaded[id] = func(__DISTILLER.require) or true
        return package.loaded[id]
      end
      return __DISTILLER.__nativeRequire(id)
    end,
    define = function(self, id, factory)
      assert(type(id) == "string", "invalid id:" .. tostring(id))
      assert(type(factory) == "function", "invalid factory:" .. tostring(factory))
      if package.loaded[id] == nil and self.FACTORIES[id] == nil then
        self.FACTORIES[id] = factory
      else
        print("[__DISTILLER::define] module " .. tostring(id) .. " is already defined")
      end
    end,
    exec = function(self, id)
      local func = self.FACTORIES[id]
      assert(func, "missing factory method for id " .. tostring(id))
      func(__DISTILLER.require)
    end
  }
end



---------------------------------------


__DISTILLER:define("foo", function(require)
function hello()
  return "Hello, World!"
end

end)



---------------------------------------


__DISTILLER:define("main.lua_distilled", function(require)
local foo = require("foo")

print(hello())

end)



---------------------------------------


__DISTILLER:exec("main.lua_distilled")