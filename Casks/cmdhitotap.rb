cask "cmdhitotap" do
  version "1.0.0"
  sha256 "55066814dcde7796b1cacb5fee9e35f5e97d67d314f203e0f8665b8adc8f91d5"

  url "https://github.com/clamclaw/cmdhitotap/releases/download/v#{version}/CMD-HitoTap.dmg"
  name "CMD HitoTap"
  desc "Switch to Eisu or Kana by pressing the left or right Command key alone"
  homepage "https://clamwake.com/cmdhitotap/"

  livecheck do
    url "https://github.com/clamclaw/cmdhitotap/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "CMD HitoTap.app"

  uninstall quit: "com.clamwake.cmdhitotap"

  zap login_item: "CMD HitoTap",
      trash:      [
        "~/Library/Caches/com.clamwake.cmdhitotap",
        "~/Library/HTTPStorages/com.clamwake.cmdhitotap",
        "~/Library/Preferences/com.clamwake.cmdhitotap.plist",
      ]
end
