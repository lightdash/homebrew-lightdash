class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.196.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.196.0/lightdash-cli-2.196.0-macos-arm64.tar.gz"
      sha256 "99cf7c77705b74668b5030801d15649deed66094d9ac1d2aa6b1eac8876245ba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.196.0/lightdash-cli-2.196.0-macos-x64.tar.gz"
      sha256 "023855f453fc867f519354fde17fb22038e034c6891387cfc09936c314ad0e38"
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
