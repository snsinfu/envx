TEST_CASE "envx searches curdir for slash-less envfile"

result="$(envx -f env sh -c 'echo "${ENV_USED}"')"
ASSERT x"${result}" = x"yes"
