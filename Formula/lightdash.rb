class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2710.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2710.2/lightdash-cli-0.2710.2-macos-arm64.tar.gz"
      sha256 "cf2b42897da8e4a480d9de4d39db78da065d60d8f7ecb0a7bcabd5cc50b336fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2710.2/lightdash-cli-0.2710.2-macos-x64.tar.gz"
      sha256 "f6a069a7a9a6cb82598978928a2ef9135727936a67ef55afe41cae883deac785"
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
