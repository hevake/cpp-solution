# 工具链的前缀
# 如果 gcc 全名为 /opt/arm-linux/bin/arm-linux-gcc，那么 TOOLCHAIN_BIN_PREFIX := /opt/arm-linux/bin/arm-linux-
TOOLCHAIN_BIN_PREFIX :=

# 执行 ./configure 时的 --host 参数
# 指定交叉编译环境中要指定所编译文件执行的目标平台
CONFIGURE_HOST :=
