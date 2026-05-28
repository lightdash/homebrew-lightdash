class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3029.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3029.0/lightdash-cli-0.3029.0-macos-arm64.tar.gz"
      sha256 "9dfe2cd7041642800894a86eeb1e746d691dc6bc9d73c1ab088df46606394479"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3029.0/lightdash-cli-0.3029.0-macos-x64.tar.gz"
      sha256 "031b6a55aa7be316ef88074177eb89243120be1b79fad56bc581b2d948e8303c"
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
