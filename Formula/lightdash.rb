class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2690.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2690.0/lightdash-cli-0.2690.0-macos-arm64.tar.gz"
      sha256 "36ed10fab2451197b97360cd5da7cd481936831bf6d249419611ca415466d63a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2690.0/lightdash-cli-0.2690.0-macos-x64.tar.gz"
      sha256 "831214f5f86c26ac902a2cbe80d6447b254526b35035e6ba8ab92593958f5331"
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
