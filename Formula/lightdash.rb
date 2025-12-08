class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2234.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2234.0/lightdash-cli-0.2234.0-macos-arm64.tar.gz"
      sha256 "e503883175ccaaa56eeeca6373565b7543c3ff0108e8b08d74afd49b456ae744"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2234.0/lightdash-cli-0.2234.0-macos-x64.tar.gz"
      sha256 "5c6f4dfcfe341b5d8f1f3a39410d6c3e8c8f6f0bf7cb706c788a9c6a8ce552ce"
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
