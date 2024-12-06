local function foo(t)
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

-- This will cause a stack overflow if t contains a self-referential table.
-- Example: t = {x = 1}; t.y = t