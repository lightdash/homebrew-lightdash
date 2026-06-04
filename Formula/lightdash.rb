class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3095.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3095.0/lightdash-cli-0.3095.0-macos-arm64.tar.gz"
      sha256 "24cc89c919cabd4fce5fba5fc7838b3c8941b92d7f2bf1f9b2ff6121fda663e8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3095.0/lightdash-cli-0.3095.0-macos-x64.tar.gz"
      sha256 "be099d7a246b0ddcc1679f60878f537a915dcd8157f8ac7419a7f9cc6a1622b5"
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
