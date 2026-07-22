class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3459.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3459.0/lightdash-cli-0.3459.0-macos-arm64.tar.gz"
      sha256 "ac6773d4cf224c13662f7690f8ebc94357617e3cee078f9fb3b1c45afe93709f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3459.0/lightdash-cli-0.3459.0-macos-x64.tar.gz"
      sha256 "9e31881458b81655ab7ecbc9c687989ab3ac442ae705c10b438a5b8027d8fb90"
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
