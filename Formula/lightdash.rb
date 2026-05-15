class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2954.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2954.0/lightdash-cli-0.2954.0-macos-arm64.tar.gz"
      sha256 "05f4200e4c9b54808b8e25e492ce8e6eaa9b921de976fb3f55aa6622fdbb8357"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2954.0/lightdash-cli-0.2954.0-macos-x64.tar.gz"
      sha256 "36bde645c3f138fc75ef293087f5890d50b7294a5076277647823aa755df4807"
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
