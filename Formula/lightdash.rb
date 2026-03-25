class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2663.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2663.1/lightdash-cli-0.2663.1-macos-arm64.tar.gz"
      sha256 "fcdf8817aa6526736e332dca79a9a77fb9d88606e3cb565b3142cc6c8912ff44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2663.1/lightdash-cli-0.2663.1-macos-x64.tar.gz"
      sha256 "b4dfe8bf994077355f8c68b36ef2f6db49e607f7f580ac04e5581b2190ba2531"
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
