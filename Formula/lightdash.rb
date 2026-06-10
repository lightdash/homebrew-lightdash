class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3126.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3126.1/lightdash-cli-0.3126.1-macos-arm64.tar.gz"
      sha256 "732f7f28861d6e03f56365c11baebd991e0de2191a0b52dc199b46345a5d1422"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3126.1/lightdash-cli-0.3126.1-macos-x64.tar.gz"
      sha256 "f0d6afdac0d33149df65f3a1aa94cbb3136214327fe5f4eb944db26993676bd8"
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
