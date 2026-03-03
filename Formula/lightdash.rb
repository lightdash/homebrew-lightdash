class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2555.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2555.0/lightdash-cli-0.2555.0-macos-arm64.tar.gz"
      sha256 "f9157dcf0764a1ead84fa261b3e25e99fcbea203c142cb71d0f18caf18738245"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2555.0/lightdash-cli-0.2555.0-macos-x64.tar.gz"
      sha256 "771827df60aab43a84cdbad81933e207e44e0f4d04f396841ff2a87689bed7ef"
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
