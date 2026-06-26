class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3257.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3257.0/lightdash-cli-0.3257.0-macos-arm64.tar.gz"
      sha256 "2444c5eaa27d3d45ba161d8e6bb3a6cfc7b8658aadb09819a8c4f404ad160e62"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3257.0/lightdash-cli-0.3257.0-macos-x64.tar.gz"
      sha256 "22e06d9c281b75aa33e875a6712d59bd06ea53e8b197a5413590cb8b4d15175f"
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
