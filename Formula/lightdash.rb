class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2621.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2621.0/lightdash-cli-0.2621.0-macos-arm64.tar.gz"
      sha256 "388e575069aad2b78f0e52adfaad6b2a5f217fa9017a33905d8eed004f9cd165"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2621.0/lightdash-cli-0.2621.0-macos-x64.tar.gz"
      sha256 "26033a2a3c7306cf08ae7311228965aa612d37eb8f170745838451063e5fce83"
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
