class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2769.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2769.0/lightdash-cli-0.2769.0-macos-arm64.tar.gz"
      sha256 "91d7b50bf2f195f3afff7481374ea3909bb40c6da16e76a3f2c86cde546ef7e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2769.0/lightdash-cli-0.2769.0-macos-x64.tar.gz"
      sha256 "56771f5241fcd4a0049a458470f1961f1498b014b5078cf89e80b67783e64987"
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
