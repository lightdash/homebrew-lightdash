class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.198.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.4/lightdash-cli-2.198.4-macos-arm64.tar.gz"
      sha256 "d2265afd7e44c18b02b470714b5ba74ce632e97cf0c1b6d27c9d21c647d51360"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.198.4/lightdash-cli-2.198.4-macos-x64.tar.gz"
      sha256 "c555ce4e40df8e02b9c280b0739a85567b96212805ac897180234fcaa43e6b73"
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
