class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2595.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2595.0/lightdash-cli-0.2595.0-macos-arm64.tar.gz"
      sha256 "8102251500198454335d2c63b0890662a04ea10f59250adbf85eee7671673f62"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2595.0/lightdash-cli-0.2595.0-macos-x64.tar.gz"
      sha256 "d8d5a44c560551c19384d41c1d28abfa6b6b537a38bd9814314686922f343b58"
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
