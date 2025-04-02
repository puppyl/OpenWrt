**英文** | 
# Actions-OpenWrt
[](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub 星标](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=星标&logo=github)
![GitHub 复刻](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=复刻&logo=github)
一个使用 GitHub Actions 编译 OpenWrt 的模板
## 使用方法
1. 点击 [使用此模板](https://github.com/P3TERX/Actions-OpenWrt/generate) 按钮创建一个新的仓库。
2. 使用 [Lean 的 OpenWrt](https://github.com/coolsnowwolf/lede) 源码生成 `.config` 文件（可通过工作流文件中的环境变量修改）。
3. 将 `.config` 文件推送到 GitHub 仓库。
4. 在 Actions 页面选择 `Build OpenWrt`。
5. 点击 `Run workflow` 按钮开始编译。
6. 编译完成后，点击 Actions 页面右上角的 `Artifacts` 按钮下载固件。
## 提示
- 生成 `.config` 文件和编译 OpenWrt 固件可能需要较长时间。因此，建议在自行编译前，先通过 [在 GitHub 搜索 `Actions-openwrt`](https://github.com/search?q=Actions-openwrt) 查看是否已有符合需求的固件。
- 在仓库介绍中添加固件的元信息（如架构和已安装的软件包），以节省他人的时间。
## 致谢
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [Mattraks/delete-workflow-runs](https://github.com/Mattraks/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)
## 许可证
[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © [**P3TERX**](https://p3terx.com)
---
### **翻译要点说明**
1. **术语统一**
   - `build` → `编译`（OpenWrt 相关术语）
   - `template` → `模板`
   - `Artifacts` → `构建产物`（此处简化为“固件”更符合场景）
2. **简洁流畅**
   - GitHub 术语保留（如 `Actions`、`Run workflow`）以保持技术文档的准确性。
   - 被动语态优化（如 `be built` → `自行编译`）。
3. **链接和格式**
   - 外部链接保留原状（如 `Lean's OpenWrt` 直接指向源码）。
   - 徽章（Badge）名称简短说明，如 `Stars` → `星标`。
4. **符合中文阅读习惯**
   - `it may take a long time` → `可能需要较长时间`（更自然的中文表达）
   - `save others' time` → `节省他人的时间`（避免直译）
✅ **最终效果**：既保留技术文档的严谨性，又确保中文用户阅读顺畅。
