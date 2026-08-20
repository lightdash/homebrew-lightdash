class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.217.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.217.0/lightdash-cli-1.217.0-macos-arm64.tar.gz"
      sha256 "f7deae56e33253c0d2f8d35b499eae7a0746afd52708f41f35c344ddbb573b82"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.217.0/lightdash-cli-1.217.0-macos-x64.tar.gz"
      sha256 "2e14b0ebdd8382c86320a96ba532a6a18096283693c141f39a7aa3bcfd59d6d1"
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
