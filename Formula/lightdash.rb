class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.157.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.157.1/lightdash-cli-2.157.1-macos-arm64.tar.gz"
      sha256 "2ae5fabbdcdbd996a8edfd2f7d20bf01c6fc2a741056a41e57de22393ac26ef4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.157.1/lightdash-cli-2.157.1-macos-x64.tar.gz"
      sha256 "05be2dbfded975c7a99cb296b45f5b1ca7c50b75e3b5ac45b3984266a747d8aa"
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
