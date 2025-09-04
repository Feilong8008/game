#!/bin/bash
# 自动推送脚本 - 用于快速提交和推送代码到GitHub

# 获取当前日期和时间
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# 检查是否有更改
if [[ -z $(git status --porcelain) ]]; then
    echo "没有检测到代码更改"
    exit 0
fi

echo "检测到代码更改，开始自动提交和推送..."

# 添加所有更改的文件
git add .

# 获取提交消息（如果提供参数则使用，否则使用默认消息）
if [ "$1" ]; then
    COMMIT_MESSAGE="$1"
else
    COMMIT_MESSAGE="Update game files - $DATE"
fi

# 提交更改
git commit -m "$COMMIT_MESSAGE

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"

# 推送到GitHub
echo "推送到GitHub仓库..."
git push origin main

echo "✅ 代码已成功同步到GitHub！"
echo "🌐 您的游戏网站将在几分钟后更新"

# 如果启用了GitHub Pages，显示网站URL
echo "📱 游戏地址: https://feilong8008.github.io/game/snake.html"