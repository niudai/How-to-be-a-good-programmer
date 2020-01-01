# make commit ==> 自动提交所有更改
.PHONY : commit
commit :
	@echo "这是一个自动提交，当且仅当用来提交全部修改并推送时才使用"
	git add .
	git commit -m "added opensource article"

# make push ==> 自动推动到 origin 远程库的 master 分支
.PHONY : push
push :
	git push origin master
	@echo "推送成功"

# cp 代表 commit and push
.PHONY : cp
cp:
	make commit
	make push