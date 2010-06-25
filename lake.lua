-- lake library
-- @author Silas Baronda

VERSION = 0.01

commands = {}

default_command = nil

-- very redundant function
function task(name, command)
	if type(name) == "table" then
		default_command = assert(name['default'])
		--print(default_command)
		commands[default_command] = assert(loadstring(command))
	else
		commands[name] = assert(loadstring(command))
		--print("command loaded " .. name)
	end
end

function sh(command)
	os.execute(command)
end

-- trying to be ruby like :(
function puts(string)
	print(string)
end

function print_help()
	print("lake v" .. VERSION)
	os.exit(1)
end


-- internal
function run_command(name)
	commands[name]()
end

-- not used
function print_commands()
	for k, v in pairs(commands) do
		print(k,v)
	end
end

-- os functions
function exists(filename)
	return assert(io.open(filename, "r"))
end
