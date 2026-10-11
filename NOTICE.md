# 素材来源与版权说明

本项目是**非官方同人作品**，与 DeepSeek 官方无关。

## 代码

`src/`、`tools/` 下的代码由仓库作者编写。可自由阅读、学习、参考；
如需商用或再分发，请先联系作者。

## 美术素材（版权不属于本仓库作者）

| 素材 | 来源 | 说明 |
|---|---|---|
| `assets/sprites/`、`assets/sheet.jpg` | 角色设计 **amenmily2050** 的「Deepseek Chan」分视图 | 由 `tools/extract_sprites.py` 自动切图抠背景 |
| `assets/anim/` 里的 97 段动作 | 便携版 `dsh-pet-standalone-webm-chat` | **本仓库不包含**这些 WebM，需自行获取 |
| `runtime/ffmpeg.exe` | FFmpeg 项目 | **本仓库不包含**，需自行获取 |
| `assets/sounds/` | 仓库作者 | 用 Python 标准库合成，非外部素材 |

## 使用限制

- 上述美术素材**仅用于个人、非商业用途**的学习与展示；
- 请勿把素材单独提取出来二次分发，也**不要用于任何商业产品**；
- 若原作者对收录有异议，联系后会立即移除相关文件。

## 依赖许可

- Python / Pillow / tkinter：各自原有许可；
- FFmpeg：LGPL/GPL（本项目只调用其可执行文件，未修改、未随仓库分发）；
- DeepSeek Harness：本项目通过读取其本地会话文件实现「AI 对话」，不修改、不反编译它。
