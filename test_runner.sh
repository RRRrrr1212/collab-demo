#!/usr/bin/env bash

# test_runner.sh
# 自動化測試 Python 程式

echo "[INFO] Running Python Test..."

# 1. Syntax Check（語法檢查）
python3 -m py_compile main.py
if [ $? -eq 0 ]; then
    echo "[OK] Python Syntax Check Passed!"
else
    echo "[FAIL] Python Syntax Error!"
    exit 1
fi

# 2. Execution Test（執行測試）
echo "[INFO] Running Execution Test..."
python3 main.py
exec_status=$?

if [ $exec_status -eq 0 ]; then
    echo "[OK] Execution Test Passed!"
    exit 0
else
    echo "[FAIL] Execution Test Failed! (exit code: $exec_status)"
    exit $exec_status
fi
