class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2938.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2938.0/lightdash-cli-0.2938.0-macos-arm64.tar.gz"
      sha256 "cba6fdfa4eb98bf5dc0027aad165bede53c2ec1678230cfb72c980e2f4104ad5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2938.0/lightdash-cli-0.2938.0-macos-x64.tar.gz"
      sha256 "0f2e9e06f42055d8a892439e8317a9042cd3f762c38b65c4482d909607a47fe4"
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
