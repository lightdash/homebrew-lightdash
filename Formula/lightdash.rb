class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3375.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3375.0/lightdash-cli-0.3375.0-macos-arm64.tar.gz"
      sha256 "4b04bc1b80001085470e2f848a3d3c2875aa662607e152671e31e974e79583bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3375.0/lightdash-cli-0.3375.0-macos-x64.tar.gz"
      sha256 "ffb8cc0a2000802ab63dcd1051b201b7cd14f4e385220a605cb897382688b896"
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
