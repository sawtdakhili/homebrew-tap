cask "oktoboot" do
  version "0.1.3"
  sha256 "b227bb408f0f72f7d844ff434e41fd526696394c4596b18658c7e65dde577364"

  url "https://github.com/sawtdakhili/oktoboot/releases/download/v#{version}/oktoboot-#{version}-macos-arm64.zip"
  name "oktoboot"
  desc "Offline Arabizi to Arabic text editor"
  homepage "https://github.com/sawtdakhili/oktoboot"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "oktoboot.app"

  zap trash: "~/Library/Application Support/oktoboot"

  caveats <<~EOS
    oktoboot is not signed with a paid Apple account. The first time you open it
    (and usually after an update), macOS blocks it: open System Settings >
    Privacy & Security and click "Open Anyway".
  EOS
end
