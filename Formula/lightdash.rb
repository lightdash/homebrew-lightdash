class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2997.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2997.0/lightdash-cli-0.2997.0-macos-arm64.tar.gz"
      sha256 "7a0fb232e8e0c2bdecc02bbe79552e68e4d8188aa8f40ae48cf298b88c318467"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2997.0/lightdash-cli-0.2997.0-macos-x64.tar.gz"
      sha256 "aee716afa377085a0a084aae244294fa20625cd83ba31cb316d417303039b263"
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
