local function foo(t, visited)
  if not visited then visited = {} end
  if visited[t] then return end
  visited[t] = true
  for k, v in pairs(t) do
    if type(v) == "table" then
      foo(v, visited)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

-- This version is safe even with self-referential tables.
-- Example: t = {x = 1}; t.y = t