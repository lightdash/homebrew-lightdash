class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3462.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3462.0/lightdash-cli-0.3462.0-macos-arm64.tar.gz"
      sha256 "2b58ce7bc2dbe4fe2a8a923d5fa70548d8d3d9be0ff05991127fd6f804519dd5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3462.0/lightdash-cli-0.3462.0-macos-x64.tar.gz"
      sha256 "93eefd9f624480830a61607af77234c2f89779efcecfdfc10dfd2d49aadc4672"
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
