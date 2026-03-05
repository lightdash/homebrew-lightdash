class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2572.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2572.0/lightdash-cli-0.2572.0-macos-arm64.tar.gz"
      sha256 "34ec8ec06c4077bebf097e459e3cc5c64a3f375d5b9cb51e17466f8c0ce54b9f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2572.0/lightdash-cli-0.2572.0-macos-x64.tar.gz"
      sha256 "a4645d78a1c5472596410c3dfedbe6768f5781a3c48114ebbae1999f45a6861a"
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
