class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2518.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2518.1/lightdash-cli-0.2518.1-macos-arm64.tar.gz"
      sha256 "91da1be7fda642ce6b941a930c7d4eb2e81d00810c3271da1da3ae63d024528b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2518.1/lightdash-cli-0.2518.1-macos-x64.tar.gz"
      sha256 "7a729054d773adfde7410f4de8e92f4b6a9aba58d0e4488f9dbba1aaa77c2483"
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
