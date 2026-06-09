class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3118.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3118.2/lightdash-cli-0.3118.2-macos-arm64.tar.gz"
      sha256 "8d1ab3005b20fe80c8090ad0b2f54863ea95f376a8d3734e10a1b650f3f88d34"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3118.2/lightdash-cli-0.3118.2-macos-x64.tar.gz"
      sha256 "39f7f36e025394cfe7e7077f94a519c76fb464a792659448d055db2d894e2f4b"
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
