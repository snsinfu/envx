TEST_CASE "-p option sets canonical PATH"

expect="$(/usr/bin/getconf PATH)"
result="$(envx -p sh -c 'echo "${PATH}"')"
ASSERT x"${result}" = x"${expect}"
