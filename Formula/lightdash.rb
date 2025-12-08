class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2234.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2234.2/lightdash-cli-0.2234.2-macos-arm64.tar.gz"
      sha256 "3181758d011624460997e6169f85874427898188c7726280c0d0b5693bf402ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2234.2/lightdash-cli-0.2234.2-macos-x64.tar.gz"
      sha256 "a9ab5fdc87f95940d584712b1856e19943c3ab786359470c8bfe5fea35a338dc"
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
