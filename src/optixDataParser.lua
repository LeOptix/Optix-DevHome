-- OK I THINK THIS ACTUALLY WORKS, FINALLY
dofile("config.lua")

local projects = {}
local readConfigFile = io.open(configFilePath, "r")

function string.trim(s)
  return s:match'^()%s*$' and '' or s:match'^%s*(.*%S)'
end

function split(str, sep)
  local fields = {}
  local pattern = string.format("([^%s]+)", sep)
  str:gsub(pattern, function(c) fields[#fields+1] = c end)
  return fields
end

for line in readConfigFile:lines() do
  local fields = split(line, " ")

  if #fields >= 3 then
    projects[fields[1]] = {
      path = fields[2],
      repo = fields[3]
    }
  else
    print(line)
  end
end

readConfigFile:close()

-- Function to search for a project by name
function searchProject(name)
  for projectName, project in pairs(projects) do
    if string.lower(string.trim(projectName)) == string.lower(string.trim(name)) then
      return project
    end
  end
  return nil
end

function searchProjectFor(name)
  for projectName, project in pairs(projects) do
    if string.lower(string.trim(projectName)) == string.lower(string.trim(name)) then
      return nil
    end
  end
  return nil
end

-- Function to count the number of projects
function countProjects()
  local count = 0
  for _, _ in pairs(projects) do
    count = count + 1
  end
  return count
end

-- Debugging statements to print out project names
isDebuggingDataParser = false -- set to true in case of errors

if isDebuggingDataParser then
  for projectName, _ in pairs(projects) do
    print("Project name: " .. projectName)
  end
end