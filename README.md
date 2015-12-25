##手工打造的IDE for C/C++ 
ps :个人使用，对他人没有太多的价值

主要参考的资料有：

+ https://github.com/yangyangwithgnu/use_vim_as_ide

--------------------------------------------
+ 插件YCM 为编译型插件，所以，克隆到本地后，需要按照插件作者的指导，重新编译插件的后台，插件才能生效；
  YCM对内存的使用较大，内存<= 4G,建议不要使用该插件；

+ 我从作者原来的文章的受益许多，但这是一个长期的过程，从陌生到熟悉，然后慢慢加入自己的想法，
**如果你真的准备好面对问题时，请接收持续的蛋疼和忧伤**

~~

+
![效果图来张](http://i3.tietuku.com/1b3825c47aa91fd5.png) 
~~

+ 已经安装的插件
    - ack.vim
    - a.vim 
    - ctrlp.vim
    - ctrlsp.vim
    - DfrankUtil
    - grep
    - indexer
    - minibufexpl.vim
    - nerdtree
    - STL-Syntax
    - synctastic
    - tagbar
    - ultisnips
    - vim-easymotion
    - vim-indent-guides
    - vim-pathogen
    - vim-powerline
    - vimprj
    - vim-signature
    - wildfire.vim
    - vim-instant-markdown
    - YCM(ps:选着性安装吧，该插件需要编译安装，平台性依赖

+ 如果你想尝试我的vim 配置 ，你可以按以下步骤安装
    - git clone https://github.com/luoyuping/vim_for_myself.git
    - git submodule init && git submodule update
