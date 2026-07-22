class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3457.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3457.0/lightdash-cli-0.3457.0-macos-arm64.tar.gz"
      sha256 "b170a791c13ad99772d3eb01f2cb4ab28233303690c6138e6e6fb94c7f4c5753"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3457.0/lightdash-cli-0.3457.0-macos-x64.tar.gz"
      sha256 "d50f809bba864cbecd1242458a89f2e6078c9dd573239a8fdd4847e93e45298f"
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
