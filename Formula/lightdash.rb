class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2322.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2322.0/lightdash-cli-0.2322.0-macos-arm64.tar.gz"
      sha256 "2d83e946513091cf3907a0845c1e52aadc14c7a2511e4ca2585090b101199d1c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2322.0/lightdash-cli-0.2322.0-macos-x64.tar.gz"
      sha256 "9d1def6015d6a3ade97cc7f14f248f7bd15b9aa38b134cff10ade2a5c93fa293"
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
