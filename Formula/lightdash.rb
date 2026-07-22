class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3452.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3452.0/lightdash-cli-0.3452.0-macos-arm64.tar.gz"
      sha256 "ebb64a8498f9e6ed780b7cb2f10cdc8a466eb377c8a40123838cffef7870e75d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3452.0/lightdash-cli-0.3452.0-macos-x64.tar.gz"
      sha256 "aaed660647cd5a7bdba128eb5a3a9f499640bf2995f34148d56248f8d44fa0ab"
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
