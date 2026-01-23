class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2372.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2372.2/lightdash-cli-0.2372.2-macos-arm64.tar.gz"
      sha256 "663c5527825d34de747c0730b55ae4fa85ad90a124e8152a0272f0a7db27bdf0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2372.2/lightdash-cli-0.2372.2-macos-x64.tar.gz"
      sha256 "01bc0306d3a4b994bd611354383574fb9aa8ebbe1aef6e4fdea0d5f9047360e1"
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
