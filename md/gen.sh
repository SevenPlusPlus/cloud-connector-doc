#!/bin/bash

domain_list="trade scrm guide stock item voucher valuecard"

echo "## iPaaS标准场景开发对接文档" > README.md
echo "" >> README.md

for domain in $domain_list
do
    echo "### $domain" >> README.md

    # 打开 CSV 文件并逐行读取
    while IFS=',' read scene desc
    do
        # 在此处处理每行数据
	curl -X GET -H "scene:$scene"  -H "Content-Type:application/json"  'http://10.215.53.173:7001/route/template/export/doc' > ${scene}.md
	echo "* [$desc](${scene}.md)" >> README.md
        echo "scene: ${desc} --> ${scene}"
	echo "" >> README.md
    done < ${domain}.csv

done


