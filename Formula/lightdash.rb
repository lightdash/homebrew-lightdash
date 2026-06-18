class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3190.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3190.3/lightdash-cli-0.3190.3-macos-arm64.tar.gz"
      sha256 "3e8f3e49d0ea22137c098fb416c1cfacb45ffa23a2f9743f139c0d884db4d36d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3190.3/lightdash-cli-0.3190.3-macos-x64.tar.gz"
      sha256 "382d4855b4493c8fbb18fc3c872c0061098d8ddf06a45f63914048ad3e18dacb"
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
