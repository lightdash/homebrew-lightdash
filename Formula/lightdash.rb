class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2995.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2995.0/lightdash-cli-0.2995.0-macos-arm64.tar.gz"
      sha256 "f84932a0df41df3efef718e0e7b576124406c9d77a8726730245d02e8117bdea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2995.0/lightdash-cli-0.2995.0-macos-x64.tar.gz"
      sha256 "a444e25bb26ef29b79078a594b597edc66f033f088f7bfb991dde54972bd23ef"
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
