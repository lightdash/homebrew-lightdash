class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3006.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3006.0/lightdash-cli-0.3006.0-macos-arm64.tar.gz"
      sha256 "51e0536eb24ba38cbcce16455a6b9f1f187d3071c6f4da83a67314026212fc7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3006.0/lightdash-cli-0.3006.0-macos-x64.tar.gz"
      sha256 "4728f35965da9750af97f7a9c8c5fd591d0d71d85e95b8c1010baca0d29b9ff1"
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
