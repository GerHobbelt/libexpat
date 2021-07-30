project "expat"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "3E35895F-37A0-46DB-88EA-A61EAFA7B2E0"

-- RTC defines are in the expat/lib/expat_config.h generated file

includedirs {
  "expat/lib",
}

files {
  "expat/lib/xmlparse.c",
  "expat/lib/xmlrole.c",
  "expat/lib/xmltok.c",
}

if (_PLATFORM_ANDROID) then
end

if (_PLATFORM_COCOA) then
end

if (_PLATFORM_IOS) then
end

if (_PLATFORM_LINUX) then
end

if (_PLATFORM_MACOS) then
end

if (_PLATFORM_WINDOWS) then
end

if (_PLATFORM_WINUWP) then
end
