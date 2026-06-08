class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3110.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.3/lightdash-cli-0.3110.3-macos-arm64.tar.gz"
      sha256 "697a853ced37d7b7850b8ff55bfe8f15aea6b63db95bc6f7d72fefc99116f92d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3110.3/lightdash-cli-0.3110.3-macos-x64.tar.gz"
      sha256 "4f969722ca6698fdfb589260930d3cf81f72363d8bc39aebc7ec606bf620a91f"
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
