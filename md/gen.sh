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
	curl -X GET -H "scene:$scene" -H "Cookie:yz_log_uuid=cb5c56f5-8330-4f6a-39c3-e87c2fa2b9da; yz_log_ftime=1656486916584; _ga=GA1.2.1353439898.1658381019; TSID=ab687c0717404e76a98016a4981187d5; loc_dfp=d98e46692de865f98043fc087b3cc43e; dfp=ff6fa2e97ccf95636f27a8a2b88e71fb; cas=ebb75f235e42cb97948082fcd410189d4d471705cdca0ae1fd32f54def28ca51757; cas_username=chenlinghong; access_user=14253_1; authority=user; is_admin=false; username=chenlinghong; OPS_JWT_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTQyNTMsImtleSI6ImNoZW5saW5naG9uZyIsImV4cCI6MTY3OTA2Mzk1MywibW9iaWxlIjoiMTMwMDgxNDIzMDYiLCJyZWFsbmFtZSI6IumZiOiLk-a0qiIsInRpbWVzdGFtcCI6MTY3ODA2Mzk1NCwiYWxpYXNuYW1lIjoi5rSq6IuTIiwidXNlcl9pZCI6MTQyNTMsImlzX2FkbWluIjpmYWxzZSwidXNlcm5hbWUiOiJjaGVubGluZ2hvbmciLCJlbWFpbCI6ImNoZW5saW5naG9uZ0B5b3V6YW4uY29tIiwiZ2VuZGVyIjpmYWxzZX0.keHKcbd0ZDazRHSLb4IBbDHkhOKSyaqGelOt1Nkqs6s; buId=1; buName=youzan; yz_log_seqn=1"  -H "Content-Type:application/json"  'https://cloud-connector-pangoo.pre.qima-inc.com/route/template/export/doc' > ${scene}.md
	echo "* [$desc](${scene}.md)" >> README.md
        echo "scene: ${desc} --> ${scene}"
	echo "" >> README.md
    done < ${domain}.csv

done


