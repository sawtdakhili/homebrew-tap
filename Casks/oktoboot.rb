cask "oktoboot" do
  version "0.1.1"
  sha256 "5798c65859291a2aafe63900719ab0ad0bcfc01b69ce5318644f3579ff11e10b"

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
