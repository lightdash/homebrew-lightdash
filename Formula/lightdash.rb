class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2687.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2687.0/lightdash-cli-0.2687.0-macos-arm64.tar.gz"
      sha256 "f258be55220394140f90444a6e84e30a083a2e99b7238187686926cc5b4d6e78"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2687.0/lightdash-cli-0.2687.0-macos-x64.tar.gz"
      sha256 "7789d63a08d6827a5d8aebe9fa6abd4c296d4ae7cdc8deba9dcfd7b32113350f"
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
