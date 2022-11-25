# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Onboarding_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Onboarding_autogen.dir\\ParseCache.txt"
  "Onboarding_autogen"
  )
endif()
