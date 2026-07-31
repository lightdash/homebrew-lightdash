class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.56.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.56.0/lightdash-cli-1.56.0-macos-arm64.tar.gz"
      sha256 "97bbb1893d8ce97624d7585a82f0190e166265d45e71394fdfb7dad29ce5f61a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.56.0/lightdash-cli-1.56.0-macos-x64.tar.gz"
      sha256 "42a054a395865e28e57d84fddcfea39f3c97683cd6f2efd9c5a8d75ebf3e35ca"
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
