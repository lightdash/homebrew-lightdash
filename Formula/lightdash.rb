class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2265.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2265.4/lightdash-cli-0.2265.4-macos-arm64.tar.gz"
      sha256 "dfbdea6e98e67fb192c1ab1cf82d2c678083efc8094139dcaa5079eba4432a9a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2265.4/lightdash-cli-0.2265.4-macos-x64.tar.gz"
      sha256 "340122e961aed36489a3114a015a56b37fdb2606b96fc9af6d549aaeb109e7b2"
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
