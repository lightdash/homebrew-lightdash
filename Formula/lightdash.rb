class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.121.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.121.0/lightdash-cli-2.121.0-macos-arm64.tar.gz"
      sha256 "bf38693038f42aef9f150eb026269f0fa7b13ea7a24125d86a5216fdcbe1d147"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.121.0/lightdash-cli-2.121.0-macos-x64.tar.gz"
      sha256 "247c9f8e4973d8ef234f517178406c63a75fe89407c4a06ae35268c3d292876b"
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
