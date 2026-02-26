class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2527.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2527.0/lightdash-cli-0.2527.0-macos-arm64.tar.gz"
      sha256 "c610eca55771d6adb85bf68e4e0d367b885f713b722636fabac1a7349120a93e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2527.0/lightdash-cli-0.2527.0-macos-x64.tar.gz"
      sha256 "c265a44ee7271ffcac45b275e7a5351e6e8a00f52783e145e9c207b23beff5ca"
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
