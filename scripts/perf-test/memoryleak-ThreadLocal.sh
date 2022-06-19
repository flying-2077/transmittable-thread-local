#!/bin/bash
set -eEuo pipefail
cd "$(dirname "$(readlink -f "$0")")"

cd ../..

readonly mainClass=com.alibaba.perf.memoryleak.NoMemoryLeak_ThreadLocal_NoRemove

./mvnw package exec:exec -DskipTests -Dexec.mainClass="$mainClass"
