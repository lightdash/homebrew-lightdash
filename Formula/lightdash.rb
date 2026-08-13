class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.146.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.4/lightdash-cli-1.146.4-macos-arm64.tar.gz"
      sha256 "1dd49d219d24cfc5b72421f297b3bcdd74f85a1ce0d7c08ac64bfe922c008bd5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.4/lightdash-cli-1.146.4-macos-x64.tar.gz"
      sha256 "74ecd53af076abbdd7fbf157ba3e735662c3a1a80cdfcf7a80aef0feb288ed3a"
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
