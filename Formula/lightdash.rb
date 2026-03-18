class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2635.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2635.0/lightdash-cli-0.2635.0-macos-arm64.tar.gz"
      sha256 "4efe7f166b90dc408cd39300cf43f249306ad0c2edb10ae8515f23959b9b430e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2635.0/lightdash-cli-0.2635.0-macos-x64.tar.gz"
      sha256 "a83af5a61f239fb0750c3f4d47fd83d2d1d9bf6709a86c3c63ec9f3a833e5c36"
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
