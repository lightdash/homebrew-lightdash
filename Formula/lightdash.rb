class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3326.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3326.1/lightdash-cli-0.3326.1-macos-arm64.tar.gz"
      sha256 "5c3a377a3aab0631c64bea0c27d28cc9ae14ab17f4fe84d12b89e374ea2951f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3326.1/lightdash-cli-0.3326.1-macos-x64.tar.gz"
      sha256 "be9034e6ab834e25b1c69d80f6128261abcc45ce305eb063122951efaf94c683"
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
