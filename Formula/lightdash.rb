class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.164.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.164.0/lightdash-cli-2.164.0-macos-arm64.tar.gz"
      sha256 "322b49a4580d8f0746691b67a2f429880c1b957685b90b42ac40c21bb4cb59ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.164.0/lightdash-cli-2.164.0-macos-x64.tar.gz"
      sha256 "78a190ba20046e86857129aab29e2b6523eec4a29c838b2a49c4aa469afadca7"
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
