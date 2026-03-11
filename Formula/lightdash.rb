class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2604.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2604.2/lightdash-cli-0.2604.2-macos-arm64.tar.gz"
      sha256 "37ce7ef55eae4e4bd744b44b0ec4d74802758b11002d5f59bbcdc2512bd2ee19"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2604.2/lightdash-cli-0.2604.2-macos-x64.tar.gz"
      sha256 "4ae1493390a17a66a3c30d49d112e1251e194127900a5ceae80a5b0c1b98ab63"
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
