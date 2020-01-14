TEST_CASE "-f option loads environment from file"

result="$(envx -f files/env1 sh -c 'echo "${ENV1_USED}"')"
ASSERT x"${result}" = x"yes"

result="$(envx -if files/env1 sh -c 'echo "${ENV1_USED}"')"
ASSERT x"${result}" = x"yes"
