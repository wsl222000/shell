#!/bin/bash
bak=backup-`date +%F`.tgz
tar czvf $bak $@ &>/dev/null
echo "执行 $0 脚本"
echo "共完成 $# 个文件的备份"
echo "具体包括 $@"
