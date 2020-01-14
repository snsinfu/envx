TEST_CASE "assignment overrides -f environment"

result="$(envx -f files/env1 ENV1_USED=sure sh -c 'echo "${ENV1_USED}"')"
ASSERT x"${result}" = x"sure"
