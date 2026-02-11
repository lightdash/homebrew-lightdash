class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2453.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2453.0/lightdash-cli-0.2453.0-macos-arm64.tar.gz"
      sha256 "b298f4f7a81d68c62fc2d59f59469f39a03e03c9ddd7f50f79b27379860c006d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2453.0/lightdash-cli-0.2453.0-macos-x64.tar.gz"
      sha256 "fdbd6bcc5cc74e2d4cc3df61a349b9215fc70c38121a30ade1ab5e80a49be8ee"
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
