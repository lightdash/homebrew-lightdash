class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2183.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2183.0/lightdash-cli-0.2183.0-macos-arm64.tar.gz"
      sha256 "d30612b09b34ea4cfefc6917c57015ba2385cc076f64e992bd98366494575291"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2183.0/lightdash-cli-0.2183.0-macos-x64.tar.gz"
      sha256 "6f048bd70eaa101c9c59758de3a10cf5eaf61a56abef8d7925406d129570bf03"
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
