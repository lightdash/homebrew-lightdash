class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2473.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2473.1/lightdash-cli-0.2473.1-macos-arm64.tar.gz"
      sha256 "ab6d3c3fe5e3a51aad2345304d9bae0ce5f0e172f9c95a82d5be417714acbbe3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2473.1/lightdash-cli-0.2473.1-macos-x64.tar.gz"
      sha256 "81d4a5b17e5b88f37517624669fdfd5ede3c9a8cae6cce3b6cc4b1264cb5dbd1"
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
