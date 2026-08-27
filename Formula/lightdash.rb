class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.40.0/lightdash-cli-2.40.0-macos-arm64.tar.gz"
      sha256 "f8a8700e5cfdf6279fe2b8eea3693c5f9d3f026969f4165f505e5ce84b2396c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.40.0/lightdash-cli-2.40.0-macos-x64.tar.gz"
      sha256 "629f0876ec3fd6a2ad21ee40ee2958c84797dccc59cb0447b40200d3ddb7a496"
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
