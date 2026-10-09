cask "oktoboot" do
  version "0.1.4"
  sha256 "8e458241edbf323b7906945580012e41ebd77afdf2e9d71091ff7f4cd3e28c7b"

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
