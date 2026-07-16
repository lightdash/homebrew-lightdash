class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3402.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3402.0/lightdash-cli-0.3402.0-macos-arm64.tar.gz"
      sha256 "fad4966f0260b321c63f5e6061be3e30342929cb1ca4a3d6102c28a19f5b7f5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3402.0/lightdash-cli-0.3402.0-macos-x64.tar.gz"
      sha256 "f904c3c7dd4e6a8ebe267a92d9358f0e04414649d9633913e9cee882982d3761"
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
