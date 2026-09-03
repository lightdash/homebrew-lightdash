class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.103.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.103.0/lightdash-cli-2.103.0-macos-arm64.tar.gz"
      sha256 "1dc9313f7474dd07fe8945c367756af3ce84913bef4fcbcf80454e20df23ff83"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.103.0/lightdash-cli-2.103.0-macos-x64.tar.gz"
      sha256 "77d4fa287ebc88d7d172c92a095fde4d4f068917e391d69b0e9d68f0f758108f"
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
