class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3324.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3324.0/lightdash-cli-0.3324.0-macos-arm64.tar.gz"
      sha256 "0442d2071ee6d6a7b45db9c8e0fae6ab272e6ca426b936779baeda0b9cb3292a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3324.0/lightdash-cli-0.3324.0-macos-x64.tar.gz"
      sha256 "383764dbb16112a405c2be429b531ec4836880ef0d5e7a5eaa5f81a5bb26fec6"
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
