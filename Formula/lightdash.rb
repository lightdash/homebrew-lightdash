class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2258.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2258.0/lightdash-cli-0.2258.0-macos-arm64.tar.gz"
      sha256 "21d402d6492237eb875fb02b4a773926b97290f48e0fbff379841f3d6e5c4f97"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2258.0/lightdash-cli-0.2258.0-macos-x64.tar.gz"
      sha256 "81f60469d2c969c900c4a7837dc135097443be3aef05fd3d3376d85ae60fe651"
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
