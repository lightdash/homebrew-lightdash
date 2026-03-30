class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2691.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2691.0/lightdash-cli-0.2691.0-macos-arm64.tar.gz"
      sha256 "199d6c8b6609b914a6501b56d689df0c172c084f2469d4ab2382b0555237cc92"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2691.0/lightdash-cli-0.2691.0-macos-x64.tar.gz"
      sha256 "2f27c0daa693f814da09a44ce5b70ccce1f2de12256ed75a2d2d07f0c1c688ea"
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
