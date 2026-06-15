class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3161.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3161.1/lightdash-cli-0.3161.1-macos-arm64.tar.gz"
      sha256 "e763766b414ad57b972ed16ce164e3c50ff88ad75e5c6ba4847dfdac90273f41"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3161.1/lightdash-cli-0.3161.1-macos-x64.tar.gz"
      sha256 "2e9297c675d2d3fd0974c5b1671b1b5769886f53e2fecb4e702468fab7e19c60"
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
