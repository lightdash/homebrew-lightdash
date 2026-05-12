class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2922.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2922.0/lightdash-cli-0.2922.0-macos-arm64.tar.gz"
      sha256 "5b50e5aff642ea94364ce50f7d9c951ea81a87025feb919c578a1489c5a655e2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2922.0/lightdash-cli-0.2922.0-macos-x64.tar.gz"
      sha256 "1576f02c30d4055060025e004541f0fce5902c5ed636a8aa24a4da56671b2ed9"
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
