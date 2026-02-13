class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2466.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2466.0/lightdash-cli-0.2466.0-macos-arm64.tar.gz"
      sha256 "1e20b0ccf5e1449e8043a448516a5514ed2ef112e1b7099791ad0950ec45c7a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2466.0/lightdash-cli-0.2466.0-macos-x64.tar.gz"
      sha256 "5c059ec373a747c404e1001306fc73a09d91cc835cc2e25f9fd45385b1fbe9c7"
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
