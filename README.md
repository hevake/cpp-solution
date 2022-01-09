# 这是什么？
cpp-solution，是跨平台的C++应用项目模板。它让开发者在非常轻松地创建一个新的C++项目。

# 使用场景

当我们开发人员需要开发一个新的项目的时候需要搭建项目环境。搭建项目环境的时候，通过会涉及到交叉编译、引入第三方等繁琐的操作。
有了本项目，开发者就可以直接 clone 本仓库。以本仓库为模块进行修改，就可以快速搭建起新的项目环境了。

# 怎么创建一个新的项目？

请参考 apps/app\_demo 的实现方法。修改或复制它即可。

# 怎么跨平台？

当需要支持除本机平台以外的其它平台，则需要引入跨平台环境。
步骤如下：

1. 在 platforms 路径下创建你的新平台目录，以 mips 为例，创建 mips 目录；
2. 将 platforms/host/tools 目录复制到 platforms/mips 目录下；
3. 对 platforms/mips/tools 下的文件进行修改
   - 对 build\_env.mk 进行修改，主要修改 `TOOLCHAIN_BIN_PREFIX` 参数，用于指定 mips 的工具链。
     如果 mips 的工具链都在 somewhere/bin/ 目录下，具都以 mips-xxx- 开头。如 gcc 为 mips-xxx-gcc，那么 `TOOLCHAIN_BIN_PREFIX` 则应设置成 `somewhere/bin/mips-xxx-`
4. 构建时，可使用命令 `make PLATFORM=misp` 进行构建。

# 未来规化

- 将目前文档与源码文件分离开
