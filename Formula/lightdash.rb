class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3455.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3455.0/lightdash-cli-0.3455.0-macos-arm64.tar.gz"
      sha256 "e39fa7c20fc681d196238b0204e3dc3281aa98dab8b12c00e6a4a19933e187cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3455.0/lightdash-cli-0.3455.0-macos-x64.tar.gz"
      sha256 "7d403775319aa7f6fe2bc5b46d5dc100fadcabdf2fc1734eb1a95af720510c0a"
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
