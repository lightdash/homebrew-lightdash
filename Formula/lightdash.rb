class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2267.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2267.1/lightdash-cli-0.2267.1-macos-arm64.tar.gz"
      sha256 "86419aeeee39a2147a20750a1440dd733fc6bfa25753bef6acde3a1979db37c7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2267.1/lightdash-cli-0.2267.1-macos-x64.tar.gz"
      sha256 "306e620c724199f0aeadd5ddab2a58d18c2b61d341d692e66e87424177d48c78"
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
