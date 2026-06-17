class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3180.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3180.0/lightdash-cli-0.3180.0-macos-arm64.tar.gz"
      sha256 "dc884b9dd2fd37d4fac25b612355141e131fca193b782397efa67496ae26e51b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3180.0/lightdash-cli-0.3180.0-macos-x64.tar.gz"
      sha256 "8b072100e2f92c200ab5be8751d9bdd0c3821d2e1c04647c877d28d9d3f00f99"
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
