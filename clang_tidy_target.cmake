find_program(CLANG_TIDY_EXE
	NAMES "clang-tidy"
	DOC "Path to clang-tidy executable"
	)

if (CLANG_TIDY_EXE)
	# generates a compile_commands.json file used by clang-tidy
	set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
	add_custom_target(tidy
		COMMAND run-clang-tidy
		WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
endif()
