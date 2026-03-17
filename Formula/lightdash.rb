class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2632.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2632.1/lightdash-cli-0.2632.1-macos-arm64.tar.gz"
      sha256 "23ae578a6b03e8964d2e6865fd25aafc2d02f48ae5c1e813dff3eccb0e65fba0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2632.1/lightdash-cli-0.2632.1-macos-x64.tar.gz"
      sha256 "613d55db9aa1da25ca5ae7e4353e186b8112c6a06594b01c19fd4c0d0d478cd4"
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
