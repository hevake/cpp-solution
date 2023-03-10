# 这是什么？
cpp-solution，是跨平台的C++应用项目模板。它让开发者在非常轻松地创建一个新的C++项目。

# 使用场景

当我们开发人员需要开发一个新的项目的时候需要搭建项目环境。搭建项目环境的时候，通过会涉及到交叉编译、引入第三方等繁琐的操作。
有了本项目，开发者就可以直接 clone 本仓库。以本仓库为模块进行修改，就可以快速搭建起新的项目环境了。

# 快速上手
```
git clone git@gitee.com:cpp-master/cpp-solution.git -b develop
cd cpp-solution;
git submodule init;
git submodule update;
make
```
构建完成后，输出的文件均在 platforms/host/ 目录下

- install\_files/，可执行文件、动态库文件、配置文件
- staging\_files/，库文件、头文件
- output\_files/，编译产出的中间文件，如目标文件

# 怎么创建一个新的项目？

如果仅仅是一个简单的可执行程序，请参考 apps/hello-world。  
如果是基于 cpp-tbox 的 main 框架开发，请参考 apps/cpp-tbox-sample 的实现方法。

# 怎么跨平台？

当需要支持除本机平台以外的其它平台，则需要引入跨平台环境。
步骤如下：

1. 在 platforms 路径下创建你的新平台目录，以 mips 为例，创建 mips 目录；
2. 将 platforms/host/tools 目录复制到 platforms/mips 目录下；
3. 对 platforms/mips/tools 下的文件进行修改
   - 对 build\_env.mk 进行修改，主要修改 `TOOLCHAIN_BIN_PREFIX` 参数，用于指定 mips 的工具链。
     如果 mips 的工具链都在 somewhere/bin/ 目录下，具都以 mips-xxx- 开头。如 gcc 为 mips-xxx-gcc，那么 `TOOLCHAIN_BIN_PREFIX` 则应设置成 `somewhere/bin/mips-xxx-`
4. 构建时，可使用命令 `make PLATFORM=misp` 进行构建。

make 命令有以下参数：
`make [PLATFORM=xxx] [RELEASE=1] [ENABLE_ASAN=1]`

- PLATFORM=xxx，指定xxx交叉编译环境，默认为 host 本机；
- RELEASE=1，构建发布版本，编译参数加 `-O2 -Os` 参数。否则构建调试版本，编译参数加 `-DDEBUG=1 -O0 -ggdb`，默认为调试版本；
- ENABLE\_ASAN=1，启用ASan进行运行时内存检测，默认不启用。

# 未来规化

- 将3rd-party编译的目标文件与与源码文件分离开
- 自动生成头文件依赖关系
