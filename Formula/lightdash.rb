class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3364.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3364.0/lightdash-cli-0.3364.0-macos-arm64.tar.gz"
      sha256 "ac6cf3d3816f8d1b9f7cb297eaa4cefed7fbfac7545401dc906c9ae58b65504d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3364.0/lightdash-cli-0.3364.0-macos-x64.tar.gz"
      sha256 "f6a84cad6e4761ad1ed0800552aff021264238f3ba55427b97e04583d91bcdb4"
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
