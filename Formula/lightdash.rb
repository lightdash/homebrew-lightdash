class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.174.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.174.0/lightdash-cli-1.174.0-macos-arm64.tar.gz"
      sha256 "d66a340411b055adb211ff637a0a1e04b5733460ddc831090564f788cb437b85"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.174.0/lightdash-cli-1.174.0-macos-x64.tar.gz"
      sha256 "245a44e7779b1f8bf1275cf023f70667b90772e981e1b20a39140f09271fb9d0"
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
