class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.240.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.240.3/lightdash-cli-1.240.3-macos-arm64.tar.gz"
      sha256 "c3064f6d7e81b959ab59830d8447fae64684873b2ed8c658a2af0ec16b7d66e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.240.3/lightdash-cli-1.240.3-macos-x64.tar.gz"
      sha256 "e51710b68f1b8f80a0a08a9cd85a50f89edc921fe802bb85ce48241a59bee9ae"
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
