class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3135.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3135.0/lightdash-cli-0.3135.0-macos-arm64.tar.gz"
      sha256 "f68232623b1becaa1f684b6742cf1f8264a692172f953f57a14f10ec7eeb2738"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3135.0/lightdash-cli-0.3135.0-macos-x64.tar.gz"
      sha256 "1e64066158dc2442f574688e5b64bca14ec1ae13b83d2afba6c183e5d57f008f"
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
