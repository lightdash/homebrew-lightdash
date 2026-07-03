class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3305.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3305.0/lightdash-cli-0.3305.0-macos-arm64.tar.gz"
      sha256 "7cb79d2ad49a8b60fe4ebf56735c117ee4491dd77b164f50b32b2eecd0ae2b08"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3305.0/lightdash-cli-0.3305.0-macos-x64.tar.gz"
      sha256 "6e4608b2460fc408ae8a1ba4c75750932b76de59705a16eb8a7c7eab6afc2dc1"
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
