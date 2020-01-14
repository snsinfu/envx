TEST_CASE "-i option clears inherited environment"

export ENVX_TESTING=yes
result="$(envx -i sh -c 'echo "${ENVX_TESTING}"')"
ASSERT x"${result}" = x""
