class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2278.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.0/lightdash-cli-0.2278.0-macos-arm64.tar.gz"
      sha256 "f05b13b5e74dc093abdfab63bc250f94d52f755f0789d21cb707010a45684002"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.0/lightdash-cli-0.2278.0-macos-x64.tar.gz"
      sha256 "09e619cee7b98d9b3475944f5bf757c2fc12bc9decc50f6c8156653378e5808f"
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
