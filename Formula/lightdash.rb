class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2179.0-rc.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2179.0-rc.1/lightdash-cli-0.2179.0-rc.1-macos-arm64.tar.gz"
      sha256 "be3cb45e8f3231db1ac5f15514e26596129fd6aa6e6b3556ac127508774dfe3c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2179.0-rc.1/lightdash-cli-0.2179.0-rc.1-macos-x64.tar.gz"
      sha256 "47b0ac857a2a15fd65d476a8ce1638ff2a129931b4c61cf7ab10d51d32c524e6"
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
