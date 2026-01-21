class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2359.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2359.0/lightdash-cli-0.2359.0-macos-arm64.tar.gz"
      sha256 "ba68b7c8be12ee2c55abdc1bb674888cd709d572d0de35f3b08c45c40fcfd25f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2359.0/lightdash-cli-0.2359.0-macos-x64.tar.gz"
      sha256 "5344f0325e938cfd8d1b6e32d0e22a112ec767e79951702e0bf02f01dce1b022"
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
