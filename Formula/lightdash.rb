class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3463.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3463.0/lightdash-cli-0.3463.0-macos-arm64.tar.gz"
      sha256 "f179625916e934d1e789ee5e421db11099978cfa24be5f1e41cf48a246cd01e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3463.0/lightdash-cli-0.3463.0-macos-x64.tar.gz"
      sha256 "1db3ee3dade1a7caca9d223eda0851a57efb7c1335d4d9afc510fef402700bf6"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
