class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3416.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3416.1/lightdash-cli-0.3416.1-macos-arm64.tar.gz"
      sha256 "8baed4d10973d2ed3e20fd423edb9a6fbb4c9cfa7b1254575af06809cfd38a93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3416.1/lightdash-cli-0.3416.1-macos-x64.tar.gz"
      sha256 "86f5412a400d3ff01bb2fbe5677277650beb1064c4ae6ea71c032318e7fe65b0"
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
