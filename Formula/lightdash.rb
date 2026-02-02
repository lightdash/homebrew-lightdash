class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2409.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2409.0/lightdash-cli-0.2409.0-macos-arm64.tar.gz"
      sha256 "cfbed6c8f2249ff67faf0ea6c437a44834170951f47fc74c0008f467e8c17362"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2409.0/lightdash-cli-0.2409.0-macos-x64.tar.gz"
      sha256 "d32ddfb36a176b3fe0efd89da5a91de83b5a466071e9df697a0d6e38f119fccc"
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
