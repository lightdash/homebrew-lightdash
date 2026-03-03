class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2552.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2552.0/lightdash-cli-0.2552.0-macos-arm64.tar.gz"
      sha256 "f9af8a8bf9c7cabcb9129fc7b87aa0329634939d4c69ca20da5d13ce01c93e70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2552.0/lightdash-cli-0.2552.0-macos-x64.tar.gz"
      sha256 "a470dc62c27710b6527790c7a5f75557a4a1d476789a3b784f2be7b80cffe55a"
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
