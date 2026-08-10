class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.112.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.112.0/lightdash-cli-1.112.0-macos-arm64.tar.gz"
      sha256 "b5b1cc1276a321cfaaae564a19475abc36b2772b3d95f925cce791102d51954e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.112.0/lightdash-cli-1.112.0-macos-x64.tar.gz"
      sha256 "b27310ff0ee54fa71b44c89becdce2ce8671465195b1cc116df6beaacc45f62c"
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
