class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.220.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.220.0/lightdash-cli-2.220.0-macos-arm64.tar.gz"
      sha256 "8f541b3194bcbe0dfae2af8d235a679efd4056a3fcafb8c3b16d06bd1a5fe5be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.220.0/lightdash-cli-2.220.0-macos-x64.tar.gz"
      sha256 "41ed82bf6e3c05feec50d1ccd6a19db164810896adfaf2e7f994ec02fa0769cd"
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
