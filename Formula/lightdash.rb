class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2417.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2417.0/lightdash-cli-0.2417.0-macos-arm64.tar.gz"
      sha256 "48fb1537b6351354e83866b566efdfd1b03981e9a91ab770e617abba5d10633c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2417.0/lightdash-cli-0.2417.0-macos-x64.tar.gz"
      sha256 "8a8b281d250630963754e92dc8d815c35a94a5afa517b8c4be7ebe26f64f6929"
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
