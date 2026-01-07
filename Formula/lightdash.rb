class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2308.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2308.1/lightdash-cli-0.2308.1-macos-arm64.tar.gz"
      sha256 "0d2611962c17c64b8db824ad5faa7bf305538f7bf484d47691e4de52bb6e56a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2308.1/lightdash-cli-0.2308.1-macos-x64.tar.gz"
      sha256 "a4d16b5b062db71bee268bc5a9de7d1b5dffc8ca7250d060c52e55ae405381b5"
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
