class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2520.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2520.0/lightdash-cli-0.2520.0-macos-arm64.tar.gz"
      sha256 "8689681736d3014fbb49cb1862186c274c6e6561d80c49d5f55f27f38ce0775e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2520.0/lightdash-cli-0.2520.0-macos-x64.tar.gz"
      sha256 "ab1a03630d1124bb9c6b6e168e96a32f11c57d366b59dfe8cf0446b8a45aba83"
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
