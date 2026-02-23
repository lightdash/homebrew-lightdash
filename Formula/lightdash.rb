class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2505.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2505.2/lightdash-cli-0.2505.2-macos-arm64.tar.gz"
      sha256 "1cd053664f49dcc019d7db8ccda6fc5900fde9ba752be01ee39290fb11a6ba37"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2505.2/lightdash-cli-0.2505.2-macos-x64.tar.gz"
      sha256 "8e46e6868ca2e54b2eb5a1c985789aefa5b99a56335b0791bfee4c9a4c39ccf3"
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
