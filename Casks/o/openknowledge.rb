cask "openknowledge" do
  version "0.52.6"
  sha256 "e627ae8443daed654859565b1e707308af667b7e9722e8e378e3c45bff049e55"

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
