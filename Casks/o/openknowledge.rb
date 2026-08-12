cask "openknowledge" do
  version "0.53.0"
  sha256 "c819cfc47d7c87676e02ca904fdf9d0f6b3e42bd00fc4f2908888504ad462682"

  url "https://github.com/inkeep/open-knowledge/releases/download/v#{version}/OpenKnowledge-arm64.dmg"
  name "OpenKnowledge"
  desc "Markdown editor for knowledge bases, LLM wikis, specs, and notes"
  homepage "https://openknowledge.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey
  depends_on arch: :arm64

  app "OpenKnowledge.app"

  uninstall quit: "com.inkeep.open-knowledge"

  zap trash: [
    "~/.ok",
    "~/Library/Application Support/OpenKnowledge",
    "~/Library/Caches/@inkeepopen-knowledge-desktop-updater",
  ]
end
