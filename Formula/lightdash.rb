class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2287.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2287.1/lightdash-cli-0.2287.1-macos-arm64.tar.gz"
      sha256 "c9a9fb697d8b3c51be14efba79341f55d64be04cfa37b7d202364573ba5ea2fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2287.1/lightdash-cli-0.2287.1-macos-x64.tar.gz"
      sha256 "738dca5085340601563cfd4d3be4c6f34e9bc578020a3a5599131908f6151617"
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
