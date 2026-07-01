class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3276.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3276.0/lightdash-cli-0.3276.0-macos-arm64.tar.gz"
      sha256 "e21124f9671874b7b8b7af9d4fb2e305c29da0c145bf1a39e4a1297f48ee6699"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3276.0/lightdash-cli-0.3276.0-macos-x64.tar.gz"
      sha256 "6a0f0cc392836abcd6c517acece4a3a610524ed8be7e3186bd27c07cf1be8ded"
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
