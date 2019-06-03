## 东北大学本科毕业论文 latex模板 2019
--------------
修改自一位学长的[NEUBachelorThesis](https://github.com/tzaiyang/NEUBachelorThesis)，以适应学校最新的要求。

设计时参考了[清华大学学位论文LaTeX模板](https://github.com/xueruini/thuthesis)

对上面的两个项目表示感谢。

如果你觉得本模板帮助了你，可以给上面两个项目送一颗小星星

---------------
### 使用方法
* `make`    生成论文 main.pdf；
* `make view`    生成论文 main.pdf 并查看生成的论文；
* `make clean`     删除中间文件（不含 main.pdf）；
* `make cleanall`  删除中间文件和生成的论文（main.pdf）；
----------------
### 下载

[Release](https://github.com/Acytoo/neu_bachelor_thesis_template/releases)

或者单击右上角绿色的按钮。

--------------------
### 注意
* 请使用xelatex

* 如果你的目录页共有奇数页，一定要在目录后面加入一个空白页，或者将目录与正文分开打印，否则正文的第一页可能被打印在目录页的背面。

* 如果缺少相应的字体可能会无法编译或者编译结果与预期不同（虽然这种情况通常不会出现），请自行安装相应的字体。

* 附录里的代码使用了Monaco字体，如果你的电脑没有安装这种字体，可以在这里[下载](https://github.com/todylu/monaco.ttf)安装，或者删掉[cls](https://github.com/Acytoo/neu_bachelor_thesis_template/blob/master/csethesis.cls)文件中，代码段字体的设置项。
